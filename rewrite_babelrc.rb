require_relative './metadata'

each_package(template: true) do |name|
  location = File.join(ENV["HOME"], "Code", "unctionjs", name, ".babelrc")
  updated = "{\n  \"presets\": [\n    \"env\",\n    \"flow\"\n  ],\n  \"plugins\": [\n    \"pipe-operator-curry\",\n    \"transform-object-rest-spread\"\n  ],\n  \"env\": {\n    \"test\": {\n      \"plugins\": [\n        \"istanbul\"\n      ]\n    }\n  }\n}\n"
  File.write(location, updated)
end
