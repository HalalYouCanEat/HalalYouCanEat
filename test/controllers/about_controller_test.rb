require_relative "../test_helper"

class AboutControllerTest < ActionDispatch::IntegrationTest

  test "should get about_app" do
    get about_app_path
    assert_response :success
    assert_select "title", "About the App | Halal You Can Eat"
  end

  test "should get about_devs" do
    get about_devs_path
    assert_response :success
    assert_select "title", "About the Devs | Halal You Can Eat"
  end

  test "should get about_halal" do
    get about_halal_path
    assert_response :success
    assert_select "title", "About Halal | Halal You Can Eat"
  end
end
