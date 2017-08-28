require_relative 'metadata'

print "What thing do you to move? "
from = gets.chomp
print "What where do you want to move it to? "
to = gets.chomp

each_package(template: true) do |name|
  system "cd ../#{name}; git mv #{from} #{to}"
end
