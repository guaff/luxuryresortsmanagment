require File.dirname(__FILE__) + "/../test_helper"
require 'shoulda'

class TestLocation < Test::Unit::TestCase

  should_have_many :cities
  should_validate_uniqueness_of :name
  should_validate_presence_of :name, :description
  should_have_attached_file :image
  should_ensure_length_in_range :name, (3..10)
  should_require_unique_attributes :name
  
end