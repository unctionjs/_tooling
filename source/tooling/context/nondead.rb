module Tooling
  module Context
    module Nondead
      include Context

      NAMES = [*File.read(File.join("data", "ACTIVE")).split("\n"), *File.read(File.join("data", "PENDING")).split("\n")].uniq
      MAPPINGS = NAMES.reduce({}) do |mapping, name|
        mapping.merge("@unction/#{name.downcase}" => name)
      end

      private def names
        NAMES
      end
    end
  end
end
