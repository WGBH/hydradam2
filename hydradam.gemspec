$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hydradam/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hydradam"
  s.version     = Hydradam::VERSION
  s.authors     = ["Andrew Myers", "Amol Khedkar", "Randall Floyd", "Daniel Pierce"]
  s.email       = ["afredmyers@gmail.com"]
  s.summary     = "Digital Asset Management for Hydra"
  s.description = "Digital Asset Management for Hydra"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.2.7"
  s.add_dependency "curation_concerns"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "engine_cart"
  s.add_development_dependency "solr_wrapper"
  s.add_development_dependency "fcrepo_wrapper"
end
