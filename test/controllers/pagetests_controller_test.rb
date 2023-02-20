require "test_helper"

class PagetestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pagetests_index_url
    assert_response :success
  end
end
