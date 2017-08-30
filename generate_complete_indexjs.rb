require_relative './metadata'

location = File.join(ENV["HOME"], "Code", "unctionjs", "complete", "index.js")
content = (PACKAGES - ["complete"]).map do |package|
  "export {default as #{package}} from \"@unction/#{package.downcase}\""
end.join("\n") + "\n"

File.write(location, content)
