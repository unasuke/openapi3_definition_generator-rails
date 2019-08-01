$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "openapi3_definition_generator/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "openapi3_definition_generator-rails"
  spec.version     = Openapi3DefinitionGenerator::Rails::VERSION
  spec.authors     = ["Yusuke Nakamura"]
  spec.email       = ["yusuke1994525@gmail.com"]
  spec.homepage    = "https://github.com/unasuke/openapi3_definition_generator-rails"
  spec.summary     = "Generate minimum OpenAPI 3 definition YAML from config/routes.rb in your Rails application."
  spec.description = "Generate minimum OpenAPI 3 definition YAML from config/routes.rb in your Rails application."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.3"
end
