require 'test_helper'

class NovelTest < MiniTest::Unit::TestCase

  def test_novel_created_without_chapters
    novel = create(:novel)
    assert novel.chapters.count == 0, 'Novel is created with chapters'
  end

  def test_novel_valid_without_chapters
    novel = create(:novel)
    assert novel.valid?, 'Novel is invalid without chapters'
  end

  def test_novel_is_created_with_an_author
    novel = create(:novel)
    assert novel.author, 'Novel was not created with an author'
  end

  def test_author_can_be_added_to_novel
    author = create(:user, name: 'Salty')
    novel = create(:novel, author: author)
    assert novel.author.name == 'Salty', 'Author was not successfully added to Novel'
  end

  def test_chapters_can_be_attached_to_short_story
    novel = create(:novel)
    10.times {create(:chapter, novel: novel)}
    assert novel.chapters.size == 10, 'Chapters cannot be attached to existing novel'
  end

end
