module Unctionjs
  module Context
    module Metapackage
      include Context

      private def names
        File.read(File.join("data", "METAPACKAGES")).split("\n")
      end
    end
  end
end
