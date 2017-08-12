require_relative './metadata'

each_package do |name|
  system "cd ../#{name}/types; git pull origin core"
end
