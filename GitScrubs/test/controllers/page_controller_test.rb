require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get page_home_url
    assert_response :success
  end

  test "should get login" do
    get page_login_url
    assert_response :success
  end

  test "should get contact_us" do
    get page_contact_us_url
    assert_response :success
  end

  test "should get about_us" do
    get page_about_us_url
    assert_response :success
  end

end
