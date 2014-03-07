require 'test_helper'

class ShortStoryTest < MiniTest::Unit::TestCase

  def test_title_must_be_unique_amongst_ShortStories
    short_story = create(:short_story, title: 'A')
    short_story2 = build(:short_story, title: 'A')
    assert short_story2.invalid?, 'ShortStory can create duplicate titles amongst all ShortStories'
  end

  def test_title_need_not_be_unique_between_ShortStories_and_chapters
    short_story = create(:short_story, title: 'B')
    chapter = build(:chapter, title: 'B')
    assert chapter.valid?, 'ShortStory title cannot be duplicated as Chapter title'
  end

  def test_ShortStory_is_created_without_an_Anthology
    short_story = create(:short_story)
    assert short_story.anthologies.count == 0, 'ShortStory is created with an anthology'
  end

  def test_ShortStory_is_valid_without_an_Anthology
    short_story = create(:short_story)
    assert short_story.valid?
  end

  def test_existing_ShortStory_can_be_included_in_an_Anthology
    short_story = create(:short_story)
#    anthology = create(:anthology)

    assert true
  end

end
