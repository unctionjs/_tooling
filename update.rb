require_relative "./metadata"
require "slop"

options = Slop.parse do |let|
  let.string "--scope", "a match or global update"
  let.string "--match", "the pattern to match"
  let.string "--global", "the type of global"
end

if options["scope"]
  answer = options["scope"]
else
  print "Would you like to update a library based on [match] or just [global]ly? "
  answer = gets.chomp
end

case answer
when "match"
  if options["match"]
    partial = Regexp.new(options["match"])
  else
    print "What name pattern should we look for? "
    partial = Regexp.new(gets.chomp)
  end

  each_package do |name|
    location = File.join(ENV["HOME"], "Code", "unctionjs", name, "package.json")
    file = File.read(location)
    package = JSON.parse(file)
    dependencies = (package["dependencies"] || {}).keys.select { |key| key =~ partial }

    system "cd ../#{name}; npm install --save #{dependencies.map {|dependency| "#{dependency}@latest"}.join(" ")}"
  end
when "global"
  if options["global"]
    level = options["global"]
  else
    print "Would you like to upgrade to [major], [minor], or [patch]?"
    level = gets.chomp
  end


  each_package do |name|
    system "cd ../#{name}; ncu --upgradeAll --semverLevel #{level} --removeRange; npm install"
  end
end
