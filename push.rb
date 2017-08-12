require_relative 'metadata'

each_repository do |name|
  system "cd ../#{name}; git push origin core"
end
