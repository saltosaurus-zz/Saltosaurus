require 'test_helper'

class ShortStoryTest < MiniTest::Unit::TestCase

  def test_title_must_be_unique_amongst_short_stories
    short_story = create(:short_story, title: 'A')
    short_story2 = build(:short_story, title: 'A')
    assert short_story2.invalid?, 'ShortStory can create duplicate titles amongst all ShortStories'
  end

  def test_title_need_not_be_unique_between_short_stories_and_chapters
    short_story = create(:short_story, title: 'B')
    chapter = build(:chapter, title: 'B')
    assert chapter.valid?, 'ShortStory title cannot be duplicated as Chapter title'
  end

  def test_short_story_is_created_without_an_anthology
    short_story = create(:short_story)
    assert short_story.anthologies.count == 0, 'ShortStory is created with an anthology'
  end

  def test_short_story_is_valid_without_an_anthology
    short_story = create(:short_story)
    assert short_story.valid?, 'ShortStory is invalid without an anthology'
  end

  def test_short_story_is_created_with_an_author
    short_story = create(:short_story)
    assert short_story.author, 'ShortStory was not created with an author'
  end

  def test_author_can_be_added_to_short_story
    author = create(:user, name: 'Salty')
    short_story = create(:short_story, author: author)
    assert short_story.author.name == 'Salty', 'Author was not successfully added to ShortStory'
  end

end
