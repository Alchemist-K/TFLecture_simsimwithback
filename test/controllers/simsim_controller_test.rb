require 'test_helper'

class SimsimControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get simsim_index_url
    assert_response :success
  end

end
