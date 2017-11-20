require_relative './metadata'

each_package(real: true) do |name|
  if different_from_latest_publish?(name)
    system "cd ../#{name}; npm publish"
  else
    puts "No changes for #{name}"
  end
end
