require 'test_helper'

class ResortsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:resorts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_resort
    assert_difference('Resort.count') do
      post :create, :resort => { }
    end

    assert_redirected_to resort_path(assigns(:resort))
  end

  def test_should_show_resort
    get :show, :id => resorts(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => resorts(:one).id
    assert_response :success
  end

  def test_should_update_resort
    put :update, :id => resorts(:one).id, :resort => { }
    assert_redirected_to resort_path(assigns(:resort))
  end

  def test_should_destroy_resort
    assert_difference('Resort.count', -1) do
      delete :destroy, :id => resorts(:one).id
    end

    assert_redirected_to resorts_path
  end
end
