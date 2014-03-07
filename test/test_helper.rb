ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/reporters'
require 'simplecov'

SimpleCov.root(Rails.root)
SimpleCov.minimum_coverage 90

# Required for use of Minitest
MiniTest::Reporters.use!

# Add more helper methods to be used by all tests here...
include FactoryGirl::Syntax::Methods
