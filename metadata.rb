require 'json'

REPOSITORIES = JSON.parse(`curl https://api.github.com/orgs/unctionjs/repos\?per_page=1000`).map { |repository| repository["name"] }
PACKAGES = REPOSITORIES.reject { |name| name.include?("_") }
METAPACKAGES = REPOSITORIES.select { |name| name.include?("_") }

def each_package
  PACKAGES.each do |name|
    puts "Working on #{name}..."
    yield(name)
  end
  puts "Done"
end

def each_repository
  REPOSITORIES.each do |name|
    puts "Working on #{name}..."
    yield(name)
  end
  puts "Done"
end

def each_metapackage
  METAPACKAGES.each do |name|
    puts "Working on #{name}..."
    yield(name)
  end
  puts "Done"
end
