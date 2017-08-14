require_relative './metadata'

print "Name: "
name = gets.chomp

root = File.join(ENV["HOME"], "Code", "unctionjs", name)

system [
  "hub clone unctionjs/_tempLate #{root}",
  "cd #{root}",
  "git remote set-url origin git@github.com:unctionjs/#{name}.git",
  "hub create unctionjs/#{name}",
  "git submodule update --init"
].join("; ")

location = File.join(root, "package.json")
old = File.read(location)
updated = old.gsub("{{NAME}}", name).gsub("{{FQNAME}}", name.downcase)

File.write(location, updated)

location = File.join(root, "README.md")
old = File.read(location)
updated = old.gsub("{{NAME}}", name).gsub("{{FQNAME}}", name.downcase)

File.write(location, updated)

location = File.join(root, "source.js")
old = File.read(location)
updated = old.gsub("{{NAME}}", name).gsub("{{FQNAME}}", name.downcase)

File.write(location, updated)

location = File.join(root, "test.js")
old = File.read(location)
updated = old.gsub("{{NAME}}", name).gsub("{{FQNAME}}", name.downcase)

File.write(location, updated)
