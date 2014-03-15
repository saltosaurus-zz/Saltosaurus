require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def test_valid_with_required_fields
    user = build(:user)
    assert user.valid?, 'User has name, username, encrypted_password but is invalid'
  end

  def test_invalid_without_display_name
    user = build(:user, display_name: nil)
    assert !user.valid?, 'User is missing name but is still valid'
  end

  def test_invalid_without_uid
    user = build(:user, uid: nil)
    assert !user.valid?, 'User is missing username but is still valid'
  end

  def test_invalid_without_provider
    user = build(:user, provider: nil)
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
