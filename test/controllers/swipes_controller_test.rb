require 'test_helper'

class SwipesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
