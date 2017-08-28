require_relative './metadata'

each_package(template: true) do |name|
  location = File.join(ENV["HOME"], "Code", "unctionjs", name, ".gitignore")
  old = File.read(location)
  updated = "#{old}\n/.nyc_output/\n/coverage/\n"
  File.write(location, updated)
end
