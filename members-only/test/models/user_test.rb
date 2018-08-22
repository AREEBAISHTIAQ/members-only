require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end
  
  test "associated posts should be destroyed" do
    @user.save
    @user.posts.create!(title: "lolly pop", content: "Lorem ipsum")
    assert_difference 'Post.count', -1 do
      @user.destroy
    end
  end
end
