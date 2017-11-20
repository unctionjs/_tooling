require_relative 'metadata'

MULTITHREADED = false

each_package do |name|
  `cd ../#{name}; npm install;`
end
