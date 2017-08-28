require_relative './metadata'

puts "Message: "
message = gets

each_package(template: true) do |name|
  system "cd ../#{name}; git commit -m \"#{message}\""
end
