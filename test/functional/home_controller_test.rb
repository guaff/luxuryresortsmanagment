require File.dirname(__FILE__) + "/../test_helper"
require 'shoulda'

class HomeControllerTest < ActionController::TestCase
  context "on GET to :index" do
    setup { get :index }
    should_respond_with :succes
    should_render_template :application
    should_not_set_the_flash
  end
end
