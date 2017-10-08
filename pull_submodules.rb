require_relative './metadata'

each_package do |name|
  system "cd ../#{name}; git submodule update --init; cd ./types; git checkout core; git pull origin core"
end
