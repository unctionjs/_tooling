require_relative 'metadata'

each_repository do |name|
  `cd ../#{name}; git push origin core;`
end
