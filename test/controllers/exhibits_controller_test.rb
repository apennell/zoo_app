require 'test_helper'

class ExhibitsControllerTest < ActionController::TestCase
  test "should get desert" do
    get :desert
    assert_response :success
  end

  test "should get forest" do
    get :forest
    assert_response :success
  end

  test "should get town" do
    get :town
    assert_response :success
  end

end
