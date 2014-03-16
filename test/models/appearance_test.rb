require 'test_helper'

class AppearanceTest < ActiveSupport::TestCase

  def test_appearance_is_created_with_anthology
    appearance = create(:appearance)
    assert appearance.anthology, 'Appearance was not created with an anthology'
  end

  def test_anthology_can_be_added_to_appearance
    anthology = create(:anthology, title: 'Salty')
    appearance = create(:appearance, anthology: anthology)
    assert appearance.anthology.title == 'Salty', 'Anthology was not successfully added to Appearance'
  end

  def test_appearance_is_created_with_short_story
    appearance = create(:appearance)
    assert appearance.short_story, 'Appearance was not created with an short story'
  end

  def test_short_story_can_be_added_to_appearance
    short_story = create(:short_story, title: 'Salty')
    appearance = create(:appearance, short_story: short_story)
    assert appearance.short_story.title == 'Salty', 'Author was not successfully added to Appearance'
  end

  def test_appearances_can_be_attached_to_anthology
    anthology = create(:anthology)
    10.times {create(:appearance, anthology: anthology)}
    assert anthology.short_stories.size == 10, 'Appearances cannot be attached to existing anthology'
  end

  def test_appearances_can_be_attached_to_short_story
    short_story = create(:short_story)
    10.times {create(:appearance, short_story: short_story)}
    assert short_story.appearances.size == 10, 'Appearances cannot be attached to existing short story'
  end

end
