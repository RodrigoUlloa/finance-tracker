require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get my_portafolio" do
    get users_my_portafolio_url
    assert_response :success
  end

end
