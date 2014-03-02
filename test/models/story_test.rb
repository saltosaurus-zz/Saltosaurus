require 'test_helper'

class StoryTest < ActiveSupport::TestCase

  def setup()
    @story = Story.new
    story.name = 'ASD'
    story.author = 'SAD'
    story.story = 'asd'
  end

  test('valid with name, author and story') {
    assert @story.valid?, 'Story has name, author and story but is invalid'
  }

  test('invalid without name') {
    @story.name = nil
    assert !@story.valid?, 'Story is missing name but is still valid'
  }

  test('invalid without author') {
    @story.author = nil
    assert !@story.valid?, 'Story is missing name but is still valid'
  }

  test('invalid without story') {
    @story.story = nil
    assert !@story.valid?, 'Story is missing name but is still valid'
  }



end
