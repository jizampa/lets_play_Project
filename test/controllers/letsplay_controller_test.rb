require 'test_helper'

class LetsplayControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get letsplay_index_url
    assert_response :success
  end

end
