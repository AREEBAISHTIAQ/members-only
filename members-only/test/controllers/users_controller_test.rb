require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user       = users(:Areeba)
  end

  test "should redirect index when not logged in" do
    get users_path
    assert_redirected_to login_url
  end

end
