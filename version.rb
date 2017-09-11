require_relative './metadata'

print "Do you want to bump to [patch], [minor], or [major]? "
level = gets.chomp

each_package do |name|
  if different_from_latest_version?(name)
    system "cd ../#{name}; npm version #{level}"
  else
    puts "No changes"
  end
end
