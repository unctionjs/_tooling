require_relative './metadata'

print "Would you like to update a library based on [match] or just [global]ly? "
answer = gets.chomp

case answer
when "match"
  print "What name pattern should we look for? "
  partial = Regexp.new(gets.chomp)

  each_package do |name|
    location = File.join(ENV["HOME"], "Code", "unctionjs", name, "package.json")
    file = File.read(location)
    package = JSON.parse(file)
    dependencies = (package["dependencies"] || {}).merge(package["devDependencies"] || {}).keys.select { |key| key.match?(partial) }

    system "cd ../#{name}; npm install --save #{dependencies.map {|dependency| "#{dependency}@latest"}.join(" ")}"
  end
when "global"
  print "Would you like to upgrade to [major], [minor], or [patch]?"
  level = gets.chomp

  each_package do |name|
    system "cd ../#{name}; ncu --upgradeAll --semverLevel #{level} --removeRange; npm install"
  end
end
