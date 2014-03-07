require 'test_helper'

class UpdateTest < MiniTest::Unit::TestCase

  def test_valid_with_required_fields
    update = build(:update)
    assert update.valid?, 'Update has author, content, title and published_on date but is invalid'
  end

  def test_invalid_without_author
    update = build(:update, author: nil)
    assert !update.valid?, 'Update is missing author but is still valid'
  end

  def test_invalid_without_content
    update = build(:update, content: nil)
    assert !update.valid?, 'Update is missing content but is still valid'
  end

  def test_invalid_without_title
    update = build(:update, title: nil)
    assert !update.valid?, 'Update is missing title but is still valid'
  end

  def test_invalid_without_published_on_date
    update = build(:update, published_on: nil)
    assert !update.valid?, 'Update is missing published_on date but is still valid'
  end

  def test_update_is_created_with_an_author
    update = create(:update)
    assert update.author, 'Update was not created with an author'
  end

  def test_author_can_be_added_to_update
    author = create(:user, name: 'Salty')
    update = create(:update, author: author)
    assert update.author.name == 'Salty', 'Author was not successfully added to Update'
  end

end
