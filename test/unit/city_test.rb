require File.dirname(__FILE__) + "/../test_helper"
require 'shoulda'

class TestCity < ActiveSupport::TestCase
  
  should_belong_to :location
  should_have_many :resortsbb
  should_validate_uniqueness_of :name
  
  should_validate_presence_of :name, :description, :location_id
  should_have_attached_file :image
  should_only_allow_numeric_values_for :location_id
  should_ensure_length_in_range :name, (3..10)
end
