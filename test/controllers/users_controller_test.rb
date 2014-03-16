require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  def setup
    @user = create(:user)
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_user
    assert_difference('User.count') do
      user = build(:user)
      post :create, user: { display_name: user.display_name, uid: user.uid, provider: user.provider }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  def test_should_show_user
    get :show, id: @user
    assert_response :success
  end

  def test_should_get_edit
    get :edit, id: @user
    assert_response :success
  end

  def test_should_update_user
    patch :update, id: @user, user: { display_name: @user.display_name, uid: @user.uid, provider: @user.provider }
    assert_redirected_to user_path(assigns(:user))
  end

  def test_should_destroy_user
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
