require_relative './metadata'

each_package do |name|
  system "cd ../#{name}; npm run test"
end