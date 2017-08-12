require_relative './metadata'

each_package do |name|
  old = JSON.parse(File.read(File.join(ENV["HOME"], "Code", "unctionjs", name, "package.json")))
  updated = old.merge({})
  File.write(File.join(ENV["HOME"], "Code", "unctionjs", name, "package.json"), JSON.pretty_generate(updated) + "\n")
end
