require_relative 'metadata'

each_package do |name|
  location = File.join(ENV["HOME"], "Code", "unctionjs", name, ".travis.yml")
  old = File.read(location)
  updated = "language: node_js\nnode_js: node\nscript: npm run ci\n"

  File.write(location, updated)
end
