require 'test_helper'

class StoryTest < ActiveSupport::TestCase

  test 'valid with name and author' do
    story = build(:story)
    assert story.valid?, 'Story has title and author but is invalid'
  end

  test 'invalid without name' do
    story = build(:story, title: nil)
    assert !story.valid?, 'Story is missing title but is still valid'
  end

  test 'invalid without author' do
    story = build(:story, author: nil)
    assert !story.valid?, 'Story is missing author but is still valid'
  end

  test 'story is created with zero comments' do
    story = create(:story)
    assert story.comments.size == 0
  end

  test 'story is valid with zero comments' do
    story = create(:story)
    assert story.valid?
  end

  test 'story is valid with comments' do
    story = create(:story)
    10.times {create(:comment, story: story)}
    assert story.valid?
  end

  test 'new comments can be attached to an existing story' do
    story = create(:story)
    10.times {create(:comment, story: story)}
    assert story.comments.size == 10
  end

end
