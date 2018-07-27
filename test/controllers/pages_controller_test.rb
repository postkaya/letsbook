require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get pages_create_path
    assert_response :success
  end

  test "should get media" do
    get pages_media_path
    assert_response :success
  end

  test "should get social" do
    get pages_social_path
    assert_response :success
  end

  test "should get payment" do
    get pages_payment_path
    assert_response :success
  end

  test "should get finish" do
    get pages_finish_path
    assert_response :success
  end

end
