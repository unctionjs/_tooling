require_relative './metadata'

each_package do |name|
  location = File.join(ENV["HOME"], "Code", "unctionjs", name, "package.json")
  old = JSON.parse(File.read(location))
  updated = old.merge({
    "scripts" => {
      "prepublishOnly" => "npm run build",
      "test" => "NODE_ENV=test tap --100 './test.js'",
      "build" => "babel './index.js' -d './transpiled/'",
      "lint" => "eslint './index.js'",
      "check" => "flow-typed install && flow check",
      "ci" => "npm run build && npm run test && npm run lint && npm run check",
      "watch" => "chokidar './index.js' './test.js' --command 'npm run ci --silent'"
    }
  })
  File.write(location, JSON.pretty_generate(updated) + "\n")
end
