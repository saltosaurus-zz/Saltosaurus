require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def test_valid_with_required_fields
    user = build(:user)
    assert user.valid?, 'User has name, username, encrypted_password but is invalid'
  end

  def test_invalid_without_name
    user = build(:user, name: nil)
    assert !user.valid?, 'User is missing name but is still valid'
  end

  def test_invalid_without_username
    user = build(:user, username: nil)
    assert !user.valid?, 'User is missing username but is still valid'
  end

  def test_invalid_without_password
    user = build(:user, encrypted_password: nil)
    assert !user.valid?, 'User is missing encrypted_password but is still valid'
  end

  def test_stories_can_be_attached_to_existing_user
    user = create(:user)
    10.times {create(:story, author: user)}
    assert user.stories.size == 10, 'Comments cannot be attached to existing user'
  end

  def test_collections_can_be_attached_to_existing_user
    user = create(:user)
    10.times {create(:collection, author: user)}
    assert user.collections.size == 10, 'Comments cannot be attached to existing user'
  end

end
