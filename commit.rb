require_relative 'metadata'

print "Scope: "
scope = gets.chomp
print "Message: "
message = gets.chomp

case scope
when "package"
  each_package do |name|
    `cd ../#{name}; git add .; git commit -m "#{message}";`
  end
when "meta"
  each_metapackage do |name|
    `cd ../#{name}; git add .; git commit -m "#{message}";`
  end
else
  each_repository do |name|
    `cd ../#{name}; git add .; git commit -m "#{message}";`
  end
end
