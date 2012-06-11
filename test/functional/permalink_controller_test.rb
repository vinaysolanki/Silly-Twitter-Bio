require 'test_helper'

class PermalinkControllerTest < ActionController::TestCase
  test "should get perma" do
    get :perma
    assert_response :success
  end

end
