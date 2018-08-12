require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | WRITEAPOST"
  end

  test "should get posts" do
    get static_pages_posts_url
    assert_response :success
    assert_select "title", "Posts | WRITEAPOST"
  end

end
