require 'test_helper'

class CommentTest < MiniTest::Unit::TestCase

  def test_valid_with_story_author_and_contents
    comment = build(:comment)
    assert comment.valid?, 'Comment has author, content and story but is invalid'
  end

  def test_invalid_without_commentable_object
    comment = build(:comment, commentable: nil)
    assert !comment.valid?, 'Comment is missing commentable object association but is still valid'
  end

  def test_invalid_without_author
    comment = build(:comment, author: nil)
    assert !comment.valid?, 'Comment is missing author but is still valid'
  end

  def test_invalid_without_content
    comment = build(:comment, content: nil)
    assert !comment.valid?, 'Comment is missing content but is still valid'
  end

  def test_comments_are_unique_on_commentable_item
    comment = create(:comment, content: 'Fish')
    comment2 = build(:comment, content: 'Fish', commentable: comment.commentable)
    assert comment2.invalid?, 'Comments are not unique amongst commentable items'
  end

  def test_comments_are_not_unique_on_different_items
    comment = create(:comment, content: 'Fish')
    comment2 = build(:comment, content: 'Fish')
    assert comment2.valid?, 'Comments are unique amongst all items'
  end

end
