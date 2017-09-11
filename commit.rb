require_relative './metadata'

puts "Message: "
message = gets

each_package do |name|
  system "cd ../#{name}; git commit -m \"#{message}\""
end
