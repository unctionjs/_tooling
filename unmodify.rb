require_relative 'metadata'

print "What file do you want to unchange? "
revertable = gets.chomp

each_package do |name|
  system "cd ../#{name}; git checkout -- #{revertable}"
end
