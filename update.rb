require_relative './metadata'

each_package do |name|
  system "cd ../#{name}; ncu --upgradeAll --semverLevel minor --removeRange; npm update --save; npm prune"
end
