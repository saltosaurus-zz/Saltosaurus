require 'test_helper'

class BlogEntryTest < MiniTest::Unit::TestCase

  def test_valid_with_required_fields
    blog_entry = build(:blog_entry)
    assert blog_entry.valid?, 'BlogEntry has author, content, title and published_on date but is invalid'
  end

  def test_invalid_without_author
    blog_entry = build(:blog_entry, author: nil)
    assert !blog_entry.valid?, 'BlogEntry is missing author but is still valid'
  end

  def test_invalid_without_content
    blog_entry = build(:blog_entry, content: nil)
    assert !blog_entry.valid?, 'BlogEntry is missing content but is still valid'
  end

  def test_invalid_without_title
    blog_entry = build(:blog_entry, title: nil)
    assert !blog_entry.valid?, 'BlogEntry is missing title but is still valid'
  end

  def test_invalid_without_published_on_date
    blog_entry = build(:blog_entry, published_on: nil)
    assert !blog_entry.valid?, 'BlogEntry is missing published_on date but is still valid'
  end

  def test_blog_entry_is_created_with_an_author
    blog_entry = create(:blog_entry)
    assert blog_entry.author, 'BlogEntry was not created with an author'
  end

  def test_author_can_be_added_to_blog_entry
    author = create(:user, name: 'Salty')
    blog_entry = create(:blog_entry, author: author)
    assert blog_entry.author.name == 'Salty', 'Author was not successfully added to Blog_entry'
  end

end
