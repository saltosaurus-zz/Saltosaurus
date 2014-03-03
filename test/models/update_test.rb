require 'test_helper'

class UpdateTest < ActiveSupport::TestCase

  test 'valid with author, content, title and published_on date' do
    update = build(:update)
    assert update.valid?, 'Update has author, content, title and published_on date but is invalid'
  end

  test 'invalid without author' do
    update = build(:update, author: nil)
    assert !update.valid?, 'Update is missing author but is still valid'
  end

  test 'invalid without content' do
    update = build(:update, content: nil)
    assert !update.valid?, 'Update is missing content but is still valid'
  end

  test 'invalid without title' do
    update = build(:update, title: nil)
    assert !update.valid?, 'Update is missing title but is still valid'
  end

  test 'invalid without published_on date' do
    update = build(:update, published_on: nil)
    assert !update.valid?, 'Update is missing published_on date but is still valid'
  end

end
