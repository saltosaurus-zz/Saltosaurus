require 'test_helper'

class AnthologyTest < MiniTest::Unit::TestCase

  def test_anthology_is_created_with_an_author
    anthology = create(:anthology)
    assert anthology.author, 'Anthology was not created with an author'
  end

  def test_author_can_be_added_to_anthology
    author = create(:user, display_name: 'Salty')
    anthology = create(:anthology, author: author)
    assert anthology.author.display_name == 'Salty', 'Author was not successfully added to Anthology'
  end

end
