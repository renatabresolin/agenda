require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "name returns the capitalized name" do
    user = User.new(name: "john")
    assert_equal "John", user.name
  end
end

