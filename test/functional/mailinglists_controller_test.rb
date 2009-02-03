require 'test_helper'

class MailinglistsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:mailinglists)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_mailinglist
    assert_difference('Mailinglist.count') do
      post :create, :mailinglist => { }
    end

    assert_redirected_to mailinglist_path(assigns(:mailinglist))
  end

  def test_should_show_mailinglist
    get :show, :id => mailinglists(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => mailinglists(:one).id
    assert_response :success
  end

  def test_should_update_mailinglist
    put :update, :id => mailinglists(:one).id, :mailinglist => { }
    assert_redirected_to mailinglist_path(assigns(:mailinglist))
  end

  def test_should_destroy_mailinglist
    assert_difference('Mailinglist.count', -1) do
      delete :destroy, :id => mailinglists(:one).id
    end

    assert_redirected_to mailinglists_path
  end
end
