module Unctionjs
  module Context
    module Regular
      include Context
      NAMES = File.read(File.join("data", "PACKAGES")).split("\n")
      MAPPINGS = NAMES.reduce({}) do |mapping, name|
        mapping.merge("@unction/#{name.downcase}" => name)
      end

      private def names
        NAMES
      end
    end
  end
end
