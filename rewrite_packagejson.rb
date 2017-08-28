require_relative './metadata'

each_package(template: true) do |name|
  location = File.join(ENV["HOME"], "Code", "unctionjs", name, "package.json")
  old = JSON.parse(File.read(location))
  updated = old
  File.write(location, JSON.pretty_generate(updated) + "\n")
end
