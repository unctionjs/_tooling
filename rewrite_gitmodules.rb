require_relative './metadata'

each_package do |name|
  File.write(File.join(ENV["HOME"], "Code", "unctionjs", name, ".gitmodules"), "[submodule \"types\"]\n    path = types\n    url = https://github.com/unctionjs/_types.git\n")
end
