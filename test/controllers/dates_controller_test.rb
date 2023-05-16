require "test_helper"

class DatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dates_index_url
    assert_response :success
  end
end
