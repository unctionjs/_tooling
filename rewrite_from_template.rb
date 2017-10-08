require_relative './metadata'


root = File.join(ENV["HOME"], "Code", "unctionjs")
template = File.join(root, "_tempLate")

each_package do |name|
  next if name == "_tempLate"
  location = File.join(root, name, ".babelrc")
  File.write(location, File.read(File.join(template, ".babelrc")))

  location = File.join(root, name, ".eslintrc.js")
  File.write(location, File.read(File.join(template, ".eslintrc.js")))

  location = File.join(root, name, ".flowconfig")
  File.write(location, File.read(File.join(template, ".flowconfig")))

  location = File.join(root, name, ".gitignore")
  File.write(location, File.read(File.join(template, ".gitignore")))

  location = File.join(root, name, ".gitmodules")
  File.write(location, File.read(File.join(template, ".gitmodules")))

  location = File.join(root, name, ".travis.yml")
  File.write(location, File.read(File.join(template, ".travis.yml")))

  location = File.join(root, name, "CONDUCT.md")
  File.write(location, File.read(File.join(template, "CONDUCT.md")))

  location = File.join(root, name, "LICENSE")
  File.write(location, File.read(File.join(template, "LICENSE")))

  location = File.join(root, name, "package.json")
  original = JSON.parse(File.read(File.join(template, "package.json")))
  old = JSON.parse(File.read(location))
  updated = old.merge({
    "scripts" => original["scripts"],
    "keywords" => original["keywords"],
    "license" => original["license"],
    "homepage" => original["homepage"].gsub("{{NAME}}", name),
    "repository" => original["repository"].gsub("{{NAME}}", name),
    "bugs" => original["bugs"].gsub("{{NAME}}", name),
    "main" => original["main"],
    "files" => original["files"],
    "nyc" => original["nyc"]
  })
  File.write(location, JSON.pretty_generate(updated))

end
