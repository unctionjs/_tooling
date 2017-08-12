require_relative 'metadata'

each_repository do |name|
  system "cd ../#{name}; git pull origin core"
end
