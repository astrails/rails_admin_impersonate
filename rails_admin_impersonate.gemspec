$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_impersonate/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_impersonate"
  s.version     = RailsAdminImpersonate::VERSION
  s.authors     = ["Boris Nadion"]
  s.email       = ["boris@astrails.com"]
  s.homepage    = "TODO"
  s.summary     = "Impersonate as a Devise user for rails_admin"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "rails_admin", "~> 0.4.9"
end