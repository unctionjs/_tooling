require_relative './metadata'

puts "Path: "
path = gets

each_package(template: true) do |name|
  system "cd ../#{name}; git add #{path}"
end
