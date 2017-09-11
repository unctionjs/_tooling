require 'json'

PACKAGES = File.read("PACKAGES").split("\n")
METAPACKAGES = File.read("METAPACKAGES").split("\n")

def different_from_latest_version?(name)
  `cd ../#{name}; git diff HEAD..#{latest_version(name)}` != ""
end

def latest_version(name)
  `cd ../#{name}; git tag`.split("\n").sort_by { |version| version.gsub("v", "").split(".").map(&:to_i) }.last
end

def each_repository()
  (PACKAGES + METAPACKAGES).each do |name|
    puts "Working on #{name}..."
    yield(name)
  end
  puts "Done"
end

def each_package()
  PACKAGES.each do |name|
    puts "Working on #{name}..."
    yield(name)
  end
  puts "Done"
end

def each_metapackage()
  METAPACKAGE.each do |name|
    puts "Working on #{name}..."
    yield(name)
  end
  puts "Done"
end

