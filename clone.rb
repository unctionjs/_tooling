require_relative 'metadata'

each_repository do |name|
  system "cd ..; git clone git@github.com:unctionjs/#{name}.git"
end
