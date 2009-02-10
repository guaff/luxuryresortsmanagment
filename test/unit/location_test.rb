require File.dirname(__FILE__) + "/../test_helper"
require 'shoulda'

class LocationTest < Test::Unit::TestCase
  load_all_fixtures
  should_require_attributes :name, :description
end