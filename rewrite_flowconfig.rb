require_relative './metadata'

each_package do |name|
  File.write(File.join(ENV["HOME"], "Code", "unctionjs", name, ".flowconfig"), "[ignore]\n.*/node_modules/.*\n.*/transpiled/.*\n.*/test.js\n\n[include]\n./source.js\n\n[libs]\nflow-typed/\ntypes/\n\n[options]\nall=true\n")
end
