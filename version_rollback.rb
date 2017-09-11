require_relative 'metadata'

each_package do |name|
  system "cd ../#{name}; git tag -d
end
