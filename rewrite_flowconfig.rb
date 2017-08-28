require_relative './metadata'

each_package(template: true) do |name|
  location = File.join(ENV["HOME"], "Code", "unctionjs", name, ".flowconfig")
  updated = "[ignore]\n.*/node_modules/.*\n.*/transpiled/.*\n.*/coverage/.*\n.*/\.nyc_output/.*\n.*/test.js\n\n[include]\n./index.js\n\n[libs]\nflow-typed/\ntypes/\n\n[options]\nall=true\n"
  File.write(location, updated)
end
