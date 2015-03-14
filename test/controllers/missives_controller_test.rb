require 'test_helper'

class MissivesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
