require 'test_helper'

class CommentTest < MiniTest::Unit::TestCase

  def test_valid_with_story_author_and_contents
    comment = build(:comment)
    assert comment.valid?, 'Comment has author, content and story but is invalid'
  end

  def test_invalid_without_commentable_object_association
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

end
