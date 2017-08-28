require_relative 'metadata'

print "What thing do you want to revert? "
revertable = gets.chomp

each_package(template: true) do |name|
  system "cd ../#{name}; git checkout -- #{revertable}"
end
