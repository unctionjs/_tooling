require 'bundler/setup'
require 'json'
require "concurrent"

PACKAGES = File.read("PACKAGES").split("\n")
METAPACKAGES = File.read("METAPACKAGES").split("\n")

def different_from_latest_version?(name)
  `cd ../#{name}; git diff HEAD..#{latest_version(name)}` != ""
end

def different_from_latest_publish?(name)
  `npm show @unction/#{name.downcase} version`.chomp != JSON.parse(`cat ../#{name}/package.json`)["version"]
end

def latest_version(name)
  `cd ../#{name}; git tag`.split("\n").sort_by { |version| version.gsub("v", "").split(".").map(&:to_i) }.last
end

def each_repository(real: false, package: false, metapackage: false, &block)
  case
  when real && package
    enqueue(PACKAGES - ["complete", "_tempLate"], &block)
  when package
    enqueue(PACKAGES, &block)
  when metapackage
    enqueue(METAPACKAGES, &block)
  else
    enqueue(PACKAGES + METAPACKAGES, &block)
  end
  puts "Done!"
end

def enqueue(jobs)
  puts "Reving up pool..."

  jobs.each do |name|
    yield(name)
  end

  pool.wait_for_termination
end

def each_package(real: false, &block)
  each_repository(real: real, package: true, &block)
end

def each_metapackage(&block)
  each_repository(metapackage: true, &block)
end
