require_relative "./metadata"
require "slop"

options = Slop.parse do |let|
  let.string "--bump", "the version bump type"
end

if options["bump"]
  bump = options["bump"]
else
  print "Do you want to bump to [patch], [minor], or [major]? "
  bump = gets.chomp
end

each_package(real: true) do |name|
  if different_from_latest_version?(name)
    system "cd ../#{name}; npm version #{bump}"
  else
    puts "No changes"
  end
end
