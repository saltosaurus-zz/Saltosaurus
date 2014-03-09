ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"
require "minitest/pride"
require "minitest/reporters"
require "simplecov"

# Required for use of Minitest in RubyMine
MiniTest::Reporters.use!

# Used for Simplecov Code Coverage suite
SimpleCov.root(Rails.root)
SimpleCov.minimum_coverage 90

# Necessary for FactoryGirl to work
include FactoryGirl::Syntax::Methods

class ActiveSupport::TestCase
  # Put code used by all test cases here
end
