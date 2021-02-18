require 'test_helper'

class ChintaisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chintais_index_url
    assert_response :success
  end

end
