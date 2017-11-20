require_relative 'metadata'

print "What thing do you want to remove? "
revertable = gets.chomp

each_package do |name|
  system "cd ../#{name}; git rm #{revertable}; rm -rf #{revertable}"
end
