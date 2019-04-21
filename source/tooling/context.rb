module Tooling
  module Context
    require_relative "context/active"

    private def with(concurrent: true, &work)
      pool = Concurrent::FixedThreadPool.new(4)

      names.each do |name|
        @package = Tooling::Package.new(name)

        if concurrent
          pool.post do
            Tooling.logger "Inside #{name}..."

            work.call(name)
          end
        else
          Tooling.logger "Inside #{name}..."

          work.call(name)
        end
      end

      pool.shutdown

      pool.wait_for_termination
    end

    private def file(name, path)
      File.read(File.join("..", name, path))
    end

    private def noncomplete
      names - ["_tempLate", "complete"]
    end

    private def package
      @package
    end
  end
end
