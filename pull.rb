require_relative 'metadata'

each_repository do |name|
  `cd ../#{name}; git pull origin core;`
end
