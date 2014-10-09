require 'test_helper'

class FriendTest < ActiveSupport::TestCase

  test "that the name is required" do
    new_friend = Friend.create(name: nil)
    assert(new_friend.valid? == false)
    assert(new_friend.errors[:name].any?)
  end

  test 'that the friend is valid when a name is given' do
  end

end
