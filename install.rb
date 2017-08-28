require_relative 'metadata'

puts "Package: (* for regular)"
package = gets.chomp

if package != "*"
  puts "Development? (y/n)"
  if gets.chomp! == "y"
    type = "--save-dev"
  else
    type = "--save"
  end
end

each_package do |name|
  if package == "*"
    system "cd ../#{name}; npm install;"
  else
    system "cd ../#{name}; npm install #{type} #{package};"
  end
end
