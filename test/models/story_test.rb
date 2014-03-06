require 'test_helper'

class StoryTest < MiniTest::Unit::TestCase

  def test_valid_with_required_fields
    story = build(:story)
    assert story.valid?, 'Story has title and author but is invalid'
  end

  def test_invalid_without_title
    story = build(:story, title: nil)
    assert !story.valid?, 'Story is missing title but is still valid'
  end

  def test_without_author
    story = build(:story, author: nil)
    assert !story.valid?, 'Story is missing author but is still valid'
  end

  def test_invalid_without_content
    short_story = build(:short_story, content: nil)
    assert !short_story.valid?, 'ShortStory is missing content but is still valid'
  end

  def test_invalid_without_published_on_date
    short_story = build(:short_story, published_on: nil)
    assert !short_story.valid?, 'ShortStory is missing published_on date but is still valid'
  end

  def test_story_is_created_with_zero_comments
    story = create(:story)
    assert story.comments.size == 0
  end

  def test_story_is_valid_with_zero_comments
    story = create(:story)
    assert story.valid?
  end

  def test_story_is_valid_with_comments
    story = create(:story)
    create(:comment, commentable: story)
    assert story.valid?
  end

  def test_new_comments_can_be_attached_to_existing_story
    story = create(:story)
    10.times {create(:comment, commentable: story)}
    assert story.comments.size == 10
  end

end
