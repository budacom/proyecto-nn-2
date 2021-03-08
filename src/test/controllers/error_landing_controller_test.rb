require 'test_helper'

class ErrorLandingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get error_landing_index_url
    assert_response :success
  end

end
