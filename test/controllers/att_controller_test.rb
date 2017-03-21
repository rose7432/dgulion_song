require 'test_helper'

class AttControllerTest < ActionController::TestCase
  test "should get att" do
    get :att
    assert_response :success
  end

end
