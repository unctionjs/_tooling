require_relative './metadata'

each_package do |name|
  puts "Level:"
  level = gets.chomp
  system "cd ../#{name}; npm version #{level}"
end
