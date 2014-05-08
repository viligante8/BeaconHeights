require 'test_helper'

class ViewEventsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
