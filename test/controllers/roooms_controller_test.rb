require "test_helper"

class RooomsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get roooms_new_url
    assert_response :success
  end
end
