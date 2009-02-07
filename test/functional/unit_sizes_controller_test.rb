require 'test_helper'

class UnitSizesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:unit_sizes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_unit_size
    assert_difference('UnitSize.count') do
      post :create, :unit_size => { }
    end

    assert_redirected_to unit_size_path(assigns(:unit_size))
  end

  def test_should_show_unit_size
    get :show, :id => unit_sizes(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => unit_sizes(:one).id
    assert_response :success
  end

  def test_should_update_unit_size
    put :update, :id => unit_sizes(:one).id, :unit_size => { }
    assert_redirected_to unit_size_path(assigns(:unit_size))
  end

  def test_should_destroy_unit_size
    assert_difference('UnitSize.count', -1) do
      delete :destroy, :id => unit_sizes(:one).id
    end

    assert_redirected_to unit_sizes_path
  end
end
