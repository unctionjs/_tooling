module Unctionjs
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
      `cd ../#{name} && git diff HEAD..#{latest_version}` != ""
    end

    def different_version_from_published?
      published_version != packagefile["version"]
    end

    def published_version
      `npm show #{fullname} version`.chomp
    end

    def published_versions
      Oj.load(`npm show --porcelain #{fullname} versions`.strip.gsub(/\s/, "").gsub("'", '"'))
    end

    def latest_version
      `cd ../#{name}; git tag`.split("\n").sort_by { |version| version.gsub("v", "").split(".").map(&:to_i) }.last
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
        select {|package| system("cd ../#{package.name} && npm outdated | grep #{package.name} > /dev/null")}.
        map {|package| "#{package.fullname}@latest"}
    end
    memoize :outdated_dependencies

    def fullname
      "@unction/#{name.downcase}"
    end
  end
end
