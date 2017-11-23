module Unctionjs
  module Context
    require_relative "context/metapackage"
    require_relative "context/package"

    private def with(concurrent: true, &work)
      pool = Concurrent::FixedThreadPool.new(3)

      names.each do |name|
        if concurrent
          pool.post do
            puts "Inside #{name}..."

            work.call(name)
          end
        else
          puts "Inside #{name}..."

          work.call(name)
        end
      end

      pool.shutdown

      pool.wait_for_termination
    end

    private def different_from_last_tag?(name)
      `cd ../#{name} && git diff HEAD..#{latest_version(name)}` != ""
    end

    private def different_version_from_published?(name)
      published_version(name) != JSON.parse(File.read("../#{name}/package.json"))["version"]
    end

    private def published_version(name)
      `npm show @unction/#{name.downcase} version`.chomp
    end

    private def published_versions(name)
      Oj.load(`npm show --porcelain @unction/#{name.downcase} versions`.strip.gsub(/\s/, "").gsub("'", '"'))
    end

    private def latest_version(name)
      `cd ../#{name}; git tag`.split("\n").sort_by { |version| version.gsub("v", "").split(".").map(&:to_i) }.last
    end

    private def file(name, path)
      File.read(File.join("..", name, path))
    end
  end
end
