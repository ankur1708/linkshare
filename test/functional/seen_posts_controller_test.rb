require 'test_helper'

class SeenPostsControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

end
