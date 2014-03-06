require 'test_helper'

class ShortStoryTest < MiniTest::Unit::TestCase

  def test_title_must_be_unique_amongst_all_ShortStories
    short_story = create(:short_story, title: 'ASD')
    short_story2 = build(:short_story, title: 'ASD')
    assert !short_story2.valid?, 'ShortStory can create duplicate titles amongst all ShortStories'
  end

  def test_title_need_not_be_unique_between_ShortStories_and_chapters
    short_story = create(:short_story, title: 'ASD')
    chapter = build(:chapter, title: 'ASD')
    assert chapter.valid?, 'ShortStory title cannot be duplicated as Chapter title'
  end

  def test_ShortStory_is_created_without_an_Anthology
    short_story = create(:short_story)
    assert !short_story.anthology, 'ShortStory is created with an anthology'
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
