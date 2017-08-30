require_relative './metadata'

location = File.join(ENV["HOME"], "Code", "unctionjs", "complete", "package.json")
old = JSON.parse(File.read(location))
dependencies = (PACKAGES - ["complete"]).map do |package|
  {"@unction/#{package.downcase}" => "1.0.0"}
end.reduce(&:merge)

updated = old.merge({
  "dependencies" => dependencies
})

File.write(location, JSON.pretty_generate(updated) + "\n")
