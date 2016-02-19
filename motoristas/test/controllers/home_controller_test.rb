require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get localizacao" do
    get :localizacao
    assert_response :success
  end

end
