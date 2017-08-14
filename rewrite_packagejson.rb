require_relative './metadata'

each_package do |name|
  location = File.join(ENV["HOME"], "Code", "unctionjs", name, "package.json")
  file = File.read(location)
  old = JSON.parse(file.gsub(%|    "flow-bin": "0.51.1",\n  }\n    "flow-typed": "2.1.5",\n    "tap": "10.3.4"\n}\n|, %|    "flow-bin": "0.51.1",\n    "flow-typed": "2.1.5",\n    "tap": "10.3.4"\n}\n|))
  updated = old
  File.write(location, JSON.pretty_generate(updated) + "\n")
end
