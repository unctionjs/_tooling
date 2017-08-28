require_relative './metadata'

each_package(template: true) do |name|
  location = File.join(ENV["HOME"], "Code", "unctionjs", name, ".gitmodules")
  updated = "[submodule \"types\"]\n    path = types\n    url = https://github.com/unctionjs/_types.git\n"
  File.write(location, updated)
end
