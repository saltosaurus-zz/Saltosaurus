require 'test_helper'

class UpdatesControllerTest < ActionController::TestCase
  def setup
    @update = create(:update)
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:updates)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_update
    assert_difference('Update.count') do
      post :create, update: { author: @update.author, title: @update.title, published_on: @update.published_on, content: @update.content }
    end

    assert_redirected_to update_path(assigns(:update))
  end

  def test_should_show_update
    get :show, id: @update
    assert_response :success
  end

  def test_should_get_edit
    get :edit, id: @update
    assert_response :success
  end

  def test_should_update_update
    patch :update, id: @update, update: { author: @update.author, title: @update.title, published_on: @update.published_on, content: @update.content }
    assert_redirected_to update_path(assigns(:update))
  end

  def test_should_destroy_update
    assert_difference('Update.count', -1) do
      delete :destroy, id: @update
    end

    assert_redirected_to updates_path
  end
end
