require 'test_helper'

class ShortStoriesControllerTest < ActionController::TestCase
  setup do
    @short_story = short_stories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:short_stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create short_story" do
    assert_difference('ShortStory.count') do
      post :create, short_story: {  }
    end

    assert_redirected_to short_story_path(assigns(:short_story))
  end

  test "should show short_story" do
    get :show, id: @short_story
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @short_story
    assert_response :success
  end

  test "should update short_story" do
    patch :update, id: @short_story, short_story: {  }
    assert_redirected_to short_story_path(assigns(:short_story))
  end

  test "should destroy short_story" do
    assert_difference('ShortStory.count', -1) do
      delete :destroy, id: @short_story
    end

    assert_redirected_to short_stories_path
  end
end
