require 'test_helper'

class ProviderControllerTest < ActionDispatch::IntegrationTest
  test 'should get providers create page' do
    get new_provider_path
    assert_response :success
  end

  # test "should get choose" do
  #   get choose_providers_index_path
  #   assert_response :success
  # end

  # test "should get calendar" do
  #   get calendar_providers_index_path
  #   assert_response :success
  # end

  # test "should get complete" do
  #   get complete_providers_index_path
  #   assert_response :success
  # end

  # test "should get confirmation" do
  #   get confirmation_providers_index_path
  #   assert_response :success
  # end
end
