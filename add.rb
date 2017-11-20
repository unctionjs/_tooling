require_relative "./metadata"
require "slop"

options = Slop.parse do |let|
  let.string "--paths", "the list of files to add"
end

if options["paths"]
  paths = options["paths"]
else
  puts "Path: "
  paths = gets.chomp
end

each_package do |name|
  system "cd ../#{name}; git add #{paths}"
end
