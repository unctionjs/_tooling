module Unctionjs
  module Context
    module Package
      include Context

      private def names
        File.read(File.join("data", "PACKAGES")).split("\n")
      end
    end
  end
end
