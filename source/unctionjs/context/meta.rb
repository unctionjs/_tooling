module Unctionjs
  module Context
    module Meta
      include Context

      private def names
        File.read(File.join("data", "METAPACKAGES")).split("\n")
      end
    end
  end
end
