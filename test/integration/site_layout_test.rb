require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'home/index'
    assert_select 'a[href=?]',    root_path,  count: 1
    assert_select 'a[href=?]',    new_user_session_path
    assert_select 'a[href=?]',    new_user_registration_path
    # get new_user_registration_path
    # assert_select 'title',  full_title("Join Us")
  end
end
