require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get home_top" do
    get users_home_top_url
    assert_response :success
  end
end
