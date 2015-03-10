$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spark_plugs/version"

 # Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spark_plugs"
  s.version     = SparkPlugs::VERSION
  s.authors     = "Joshua Teeter"
  s.email       = "joshteeter@gmail.com"
  s.homepage    = "http://github.com/whatisinternet/spark_plugs"
  s.summary     = "Slug based semi-static pages"
  s.description = "Slug based semi-static pages"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]
  s.required_ruby_version = ">= 2.1.5"

  s.add_dependency "railties", ">= 4.0", "<5"
  s.add_development_dependency 'codeclimate-test-reporter','~> 0.4'
end
