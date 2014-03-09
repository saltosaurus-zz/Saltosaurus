require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  def setup
    @comment = create(:comment)
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:comments)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_comment
    assert_difference('Comment.count') do
      comment = build(:comment)
      post :create, comment: { author: comment.author, content: comment.content,  commentable_id: @comment.commentable.id, commentable_type: @comment.commentable.class.name}
    end

    assert_redirected_to comment_path(assigns(:comment))
  end

  def test_should_show_comment
    get :show, id: @comment
    assert_response :success
  end

  def test_should_get_edit
    get :edit, id: @comment
    assert_response :success
  end

  def test_should_update_comment
    patch :update, id: @comment, comment: { author: @comment.author, content: @comment.content,  commentable_id: @comment.commentable.id, commentable_type: @comment.commentable.class.name }
    assert_redirected_to comment_path(assigns(:comment))
  end

  def test_should_destroy_comment
    assert_difference('Comment.count', -1) do
      delete :destroy, id: @comment
    end

    assert_redirected_to comments_path
  end
end
