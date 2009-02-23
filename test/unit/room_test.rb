require File.dirname(__FILE__) + "/../test_helper"
require 'shoulda'

class TestRoom < ActiveSupport::TestCase
  
  should_belong_to :resort
  
  should_have_many :unit_sizes
  
  #TODO: GENERATE A CODE GENERATOR
  
  should_validate_presence_of  :code, :availability, :sale_or_rent, :price , :owner_name, :unit_size_id, :resort_id
  
  should_validate_numericality_of :unit_size_id
  
  should_have_attached_file :image
    
end
