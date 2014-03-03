require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  test 'valid with story, author and contents' do
    comment = build(:comment)
    assert comment.valid?, 'Comment has author, content and story but is invalid'
  end

  test 'invalid without story' do
    comment = build(:comment, story: nil)
    assert !comment.valid?, 'Story is missing author but is still valid'
  end

  test 'invalid without author' do
    comment = build(:comment, author: nil)
    assert !comment.valid?, 'Story is missing content but is still valid'
  end

  test 'invalid without content' do
    comment = build(:comment, content: nil)
    assert !comment.valid?, 'Story is missing story but is still valid'
  end

end
