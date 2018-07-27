require 'test_helper'

class WorkingHoursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get working_hours_index_url
    assert_response :success
  end

  test "should get new" do
    get working_hours_new_url
    assert_response :success
  end

  test "should get create" do
    get working_hours_create_url
    assert_response :success
  end

end
