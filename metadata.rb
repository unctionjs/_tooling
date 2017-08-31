require 'json'

REPOSITORIES = JSON.parse(`curl https://api.github.com/orgs/unctionjs/repos\?per_page=1000`).map { |repository| repository["name"] }
PACKAGES = REPOSITORIES.reject { |name| name.include?("_") || name == "unctionjs.github.io" || name == "complete" }
METAPACKAGES = REPOSITORIES.select { |name| name.include?("_") || name == "unctionjs.github.io" }

def each_package(template: false, complete: true)
  PACKAGES.each do |name|
    puts "Working on #{name}..."
    yield(name)
  end

  if complete
    puts "Working on complete..."
    yield("complete")
  end

  if template
    puts "Working on _template..."
    yield("_template")
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
