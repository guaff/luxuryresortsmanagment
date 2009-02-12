require File.dirname(__FILE__) + '/../test_helper'

class UnitSizesControllerTest < ActionController::TestCase

  context "on get to :new" do
  setup { get :new }
  should_render_template :new
  end

end
