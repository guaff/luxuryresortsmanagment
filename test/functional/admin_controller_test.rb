require File.dirname(__FILE__) + "/../test_helper"

class AdminControllerTest < ActionController::TestCase

  context "on GET to :index without credentials" do
    setup { get :index }
    should_redirect_to "'session/new'"
  end
  
  #context "on GET to :index with password" do
  #  Factory(:user, :name => "ivan1", :password => "01201323")
  #  setup { get :index } 
  #  should_render_template :index
  #  should_not_set_the_flash
  #end
  
  #context "on GET to :admin with credentials" do
  #  setup { @request.session[:users] = user(user).id }
  #  should_render_template :index
  #end
end
