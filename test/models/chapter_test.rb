require 'test_helper'

class ChapterTest < MiniTest::Unit::TestCase

  def test_valid_with_required_fields
    chapter = build(:chapter)
    assert chapter.valid?, 'Update has novel, title, number, content and published_on date but is invalid'
  end

  def test_invalid_without_novel
    chapter = build(:chapter, novel: nil)
    assert !chapter.valid?, 'Chapter is missing novel but is still valid'
  end

  def test_invalid_without_number
    chapter = build(:chapter, number: nil)
    assert !chapter.valid?, 'Chapter is missing number but is still valid'
  end

  def test_invalid_without_content
    chapter = build(:chapter, content: nil)
    assert !chapter.valid?, 'Chapter is missing content but is still valid'
  end

  def test_invalid_without_published_on_date
    chapter = build(:chapter, published_on: nil)
    assert !chapter.valid?, 'Chapter is missing published_on date but is still valid'
  end

  def test_number_must_be_unique_within_single_novel
    novel = create(:novel)
    chapter = create(:chapter, number: 1, novel: novel)
    chapter1 = build(:chapter, number: 1, novel: novel)
    assert !chapter1.valid?, 'Chapter can create duplicate number combinations within a novel'
  end

  def test_title_must_be_unique_within_single_novel
    novel = create(:novel)
    chapter = create(:chapter, title: 'ASD', novel: novel)
    chapter1 = build(:chapter, title: 'ASD', novel: novel)
    assert !chapter1.valid?, 'Chapter can create duplicate title combinations within a novel'
  end

  def test_title_can_be_duplicated_across_novels
    chapter1 = create(:chapter, title: 'ASDDSAFG')
    chapter2 = build(:chapter, title: 'ASDDSAFG')
    assert chapter2.valid?, 'Chapter title cannot be duplicated across novels'
  end

  def test_number_can_be_duplicated_across_novels
    chapter1 = create(:chapter, number: 1)
    chapter2 = build(:chapter, number: 1)
    assert chapter2.valid?, 'Chapter number cannot be duplicated across novels'
  end

  def test_chapter_is_created_with_a_novel
    chapter = create(:chapter)
    assert chapter.novel, 'Chapter was not created with a novel'
  end

  def test_chapter_can_be_added_to_a_novel
    novel = create(:novel)
    chapter = create(:chapter, novel: novel)
    assert novel.chapters.count == 1, 'Chapter cannot be successfully added to a Novel'
  end

  def test_chapter_is_created_with_an_author
    chapter = create(:chapter)
    assert chapter.author, 'Chapter was not created with an author'
  end

  def test_author_can_be_added_to_chapter
    author = create(:user, name: 'Salty')
    chapter = create(:chapter, author: author)
    assert chapter.author.name == 'Salty', 'Author was not successfully added to Chapter'
  end

end
