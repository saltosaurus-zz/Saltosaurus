require 'test_helper'

class CollectionTest < MiniTest::Unit::TestCase

  def test_valid_with_required_fields
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

  def test_invalid_without_completed_flag
    collection = build(:collection, completed: nil)
    assert !collection.valid?, 'Collection is missing begun_on date but is still valid'
  end

  def test_collection_is_created_without_comments
    collection = create(:collection)
    assert collection.comments.size == 0, 'Collection was created with a nonzero number of comments'
  end

  def test_collection_is_valid_without_comments
    collection = create(:collection)
    assert collection.valid?, 'Collection is invalid without comments'
  end

  def test_collection_is_valid_with_comments
    collection = create(:collection)
    create(:comment, commentable: collection)
    assert collection.valid?, 'Collection is invalid with comments'
  end

  def test_comments_can_be_added_to_existing_collection
    collection = create(:collection)
    10.times {create(:comment, commentable: collection)}
    assert collection.comments.size == 10, 'New Comments cannot be attached to a Collection preoperly'
  end

  def test_collection_is_created_with_an_author
    collection = create(:collection)
    assert collection.author, 'Collection was not created with an author'
  end

  def test_author_can_be_added_to_collection
    author = create(:user, display_name: 'Salty')
    collection = create(:collection, author: author)
    assert collection.author.display_name == 'Salty', 'Author was not successfully added to Collection'
  end

end
