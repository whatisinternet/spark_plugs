source 'https://rubygems.org'

# Declare your gem's dependencies in spark_plugs.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

group :test do
  gem 'faker'
  gem 'shoulda-matchers'
end

group :development, :test do
  gem 'factory_girl_rails', require: false
  gem 'rspec-rails'
  gem 'guard-rspec', require:false
end

