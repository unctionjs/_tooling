require_relative './metadata'

each_package do |name|
  system "cd ../#{name}/types; git checkout core; git pull origin core"
end
