# spec/spec_helper.rb
#
# This file is copied to spec/ when you run 'rails generate rspec:install'
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start
ENV["RAILS_ENV"] ||= 'test'

################################################################
# Change this
# require File.expand_path("../../config/environment", __FILE__)
#
# to this
require File.expand_path("../dummy/config/environment", __FILE__)
################################################################

require 'rspec/rails'
require 'factory_girl_rails'
require 'shoulda/matchers'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.

################################################################
# Change this
# Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }
# To this
ENGINE_RAILS_ROOT=File.join(File.dirname(__FILE__), '../')
Dir[File.join(ENGINE_RAILS_ROOT, "spec/support/**/*.rb")].each {|f| require f}
################################################################

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|
  config.before(:each, type: :controller) { @routes = SparkPlugs::Engine.routes }
  config.before(:each, type: :routing)    { @routes = SparkPlugs::Engine.routes }
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
end
