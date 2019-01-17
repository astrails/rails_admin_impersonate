# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_admin_impersonate/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_admin_impersonate"
  spec.version       = RailsAdminImpersonate::VERSION
  spec.authors       = ["Boris Nadion"]
  spec.email         = ["boris@astrails.com"]
  spec.summary       = "Impersonate as a Devise user for rails_admin"
  spec.description   = "Impersonate as a Devise user for rails_admin"
  spec.homepage      = "https://github.com/astrails/rails_admin_impersonate"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails"
  spec.add_dependency "rails_admin"
  spec.add_development_dependency "bundler", "~> 1"
  spec.add_development_dependency "rake"
end
