$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "phcaccounts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "phcaccounts"
  s.version     = Phcaccounts::VERSION
  s.authors     = ["BradPotts"]
  s.email       = ["brad.potts@phcnetworks.net"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Phcaccounts."
  s.description = "TODO: Description of Phcaccounts."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.6"

  s.add_development_dependency "sqlite3"
end
