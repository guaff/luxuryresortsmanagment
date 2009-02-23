require File.dirname(__FILE__) + "/../test_helper"
require 'shoulda'

class TestResort < ActiveSupport::TestCase
  
  should_belong_to :city
  
  should_have_many :rooms
  
  should_validate_presence_of :name, :city_id, :description
  
  should_only_allow_numeric_values_for :city_id
  
  should_have_attached_file :photo_main
  should_have_attached_file :photo1
  should_have_attached_file :photo2
  should_have_attached_file :photo3
  should_have_attached_file :photo4
  
end
