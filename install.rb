require_relative 'metadata'

each_package do |name|
  `cd ../#{name}; npm install;`
end
