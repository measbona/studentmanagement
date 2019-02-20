require 'test_helper'

class DepartmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get departments_name:string_url
    assert_response :success
  end

end
