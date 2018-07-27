module Tooling
  class Package
    extend Memoist

    attr_reader :name

    def initialize(name)
      @name = name
    end

    def ci_passes?
      system("cd ../#{name} && npm run ci", out: "/dev/null")
    end

    def different_from_last_tag?
      `cd ../#{name} && git diff HEAD..#{latest_tagged_version}` != ""
    end

    def different_version_from_published?
      npm_recent_version != packagefile["version"]
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
      `cd ../#{name}; git tag`.chomp.split("\n").sort_by { |version| version.gsub("v", "").split(".").map(&:to_i) }
    end

    def current_version
      packagefile["version"]
    end

    def packagefile
      Oj.load(File.read(File.join("..", name, "package.json")))
    end

    def package_property(key)
      packagefile.fetch(key)
    end

    def dependencies
      (packagefile.fetch("dependencies", {}) || {}).
        keys.
        select { |name| MAPPINGS.key?(name) }.
        map { |name| MAPPINGS.fetch(name) }.
        map(&Package.method(:new))
    end
    memoize :dependencies

    def outdated_dependencies
      dependencies.
        select {|dependency| `cd ../#{name} && npm outdated`.match?(/^#{dependency.fullname}/)}
    end
    memoize :outdated_dependencies

    def fullname
      "@unction/#{name.downcase}"
    end
  end
end
