require_relative 'metadata'

each_package do |name|
  location = File.join(ENV["HOME"], "Code", "unctionjs", name, "test.js")
  old = File.read(location)
  updated = old.gsub("import  from \"./source\"", "import #{name} from \"./source\"")

  File.write(location, updated)
end
