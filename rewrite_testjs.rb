require_relative 'metadata'

each_package(template: true) do |name|
  location = File.join(ENV["HOME"], "Code", "unctionjs", name, "test.js")
  old = File.read(location)
  updated = old.gsub("from \"./\"", "from \"./index\"")

  File.write(location, updated)
end
