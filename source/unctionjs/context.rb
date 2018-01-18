module Unctionjs
  module Context
    require_relative "context/meta"
    require_relative "context/regular"

    private def with(concurrent: true, &work)
      pool = Concurrent::FixedThreadPool.new(3)

      names.each do |name|
        @package = Unctionjs::Package.new(name)

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

    private def file(name, path)
      File.read(File.join("..", name, path))
    end

    private def noncomplete
      names - ["complete", "_tempLate"]
    end

    private def package
      @package
    end
  end
end
