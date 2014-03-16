require 'test_helper'

class StoriesControllerTest < ActionController::TestCase
  def setup
    @story = create(:story)
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:stories)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_story
    assert_difference('Story.count') do
      post :create, story: { author: @story.author, title: @story.title, content: @story.content, published_on: @story.published_on, type: @story.type }
    end

    assert_redirected_to story_path(assigns(:story))
  end

  def test_should_show_story
    get :show, id: @story
    assert_response :success
  end

  def test_should_get_edit
    get :edit, id: @story
    assert_response :success
  end

  def test_should_update_story
    patch :update, id: @story, story: { author: @story.author, title: @story.title, content: @story.content, published_on: @story.published_on, type: @story.type }
    assert_redirected_to story_path(assigns(:story))
  end

  def test_should_destroy_story
    assert_difference('Story.count', -1) do
      delete :destroy, id: @story
    end

    assert_redirected_to stories_path
  end
end
