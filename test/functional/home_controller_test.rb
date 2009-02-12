require File.dirname(__FILE__) + "/../test_helper"

class HomeControllerTest < ActionController::TestCase
  context "on GET to :index" do
    setup { get :index }
    should_render_template :index
    should_not_set_the_flash
    should_assign_to :locations, :cities, :city, :mailinglist
  end
  
  context "on get to :about" do
    setup { get :about }
    should_render_template :about
    should_not_set_the_flash
  end
  
  context "on get to :contact" do 
    setup { get :contact}
    should_render_template :contact
    should_not_set_the_flash
  end
  
  context "on get to :search_city" do 
    Factory.build(:city, :name => "whattf")
    setup { get :search_city, :id => "1" }
    should_render_template :search_city
    should_assign_to :city, :resorts, :resorts_count_divided
  end
  
  context "on get to :update_city" do
    Factory.build(:city, :name => "mycity")
    setup { get :update_city, :id => "1" } 
    should_not_set_the_flash
    should_respond_with :success
    should_assign_to :html, :cities
  end

end
