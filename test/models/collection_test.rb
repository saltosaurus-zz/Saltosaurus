require 'test_helper'

class CollectionTest < MiniTest::Unit::TestCase

  def test_valid_with_title_author_content_and_published_on_date
    collection = build(:collection)
    assert collection.valid?, 'Collection has title and author but is invalid'
  end

  def test_invalid_without_title
    collection = build(:collection, title: nil)
    assert !collection.valid?, 'Collection is missing title but is still valid'
  end

  def test_invalid_without_author
    collection = build(:collection, author: nil)
    assert !collection.valid?, 'Collection is missing author but is still valid'
  end

  def test_invalid_without_begun_on_date
    collection = build(:collection, begun_on: nil)
    assert !collection.valid?, 'Collection is missing begun_on date but is still valid'
  end

  def test_valid_with_completed_on_date
    collection = build(:collection, completed_on: Time.now)
    assert collection.valid?, 'Collection is invalid with completed_on date'
  end

  def test_Collection_is_created_with_zero_comments
    collection = create(:collection)
    assert collection.comments.size == 0, 'Collection was created with a nonzero number of comments'
  end

  def test_Collection_is_valid_with_zero_comments
    collection = create(:collection)
    assert collection.valid?, 'Collection is invalid without comments'
  end

  def test_Collection_is_valid_with_comments
    collection = create(:collection)
    create(:comment, commentable: collection)
    assert collection.valid?, 'Collection is invalid with comments'
  end

  def test_new_comments_can_be_attached_to_an_existing_Collection
    collection = create(:collection)
    10.times {create(:comment, commentable: collection)}
    assert collection.comments.size == 10, 'New Comments cannot be attached to a Collection preoperly'
  end

end
