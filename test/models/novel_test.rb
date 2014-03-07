require 'test_helper'

class NovelTest < MiniTest::Unit::TestCase

  def test_novel_created_without_chapters
    novel = create(:novel)
    assert novel.chapters.count == 0
  end

  def test_novel_valid_without_chapters
    novel = create(:novel)
    assert novel.valid?
  end

end
