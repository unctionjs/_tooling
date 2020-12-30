module Tooling
  class Package
    extend Memoist

    attr_reader :name

    def initialize(name)
      @name = name
    end

    def path
      File.join("..", name)
    end

    def ci_passes?
      system("cd #{path} && npm run ci", out: "/dev/null")
    end

    def different_from_last_tag?
      `cd #{path} && git diff HEAD..#{latest_tagged_version}` != ""
    end

    def different_version_from_published?
      npm_recent_version != current_version
    end

    def npm_recent_version
      `npm show --porcelain #{fullname} version`.chomp
    end

    def npm_latest_version
      npm_versions.last
    end

    def npm_versions
      eval(`npm show --porcelain #{fullname} versions`).sort_by { |version| version.split(".").map(&:to_i) }
    end

    def latest_tagged_version
      tagged_versions.last
    end

    def tagged_versions
      `cd #{path}; git tag`.chomp.split("\n").sort_by { |version| version.gsub("v", "").split(".").map(&:to_i) }
    end

    def current_version
      package_property("version")
    end

    def packagefile
      Oj.load(File.read(File.join(path, "package.json")))
    end

    def package_property(key, default = nil)
      packagefile.fetch(key, default)
    end

    def unction_dependencies
      dependencies.
        select { |package| MAPPINGS.key?(package.name) }.
        map { |package| MAPPINGS.fetch(package.name) }.
        map(&Package.method(:new))
    end

    def dependencies
      (package_property("dependencies", {}) || {}).
        keys.
        map(&Package.method(:new))
    end

    def dev_dependencies
      (package_property("devDependencies", {}) || {}).
        keys.
        map(&Package.method(:new))
    end

    def outdated_unction_dependencies
      unction_dependencies.
        select {|dependency| `cd #{path} && npm outdated`.match?(/^#{dependency.fullname}/)}
    end

    def fullname
      "@unction/#{npm_name}"
    end

    def npm_name
      name.downcase
    end
  end
end
