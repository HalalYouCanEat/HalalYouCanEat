require_relative "../test_helper"

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get restaurants_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_url
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference("Restaurant.count") do
      post restaurants_url, params: { restaurant: { id: 3, name: @restaurant.name } }
    end

    assert_redirected_to restaurant_url(Restaurant.last)
  end

  test "should show restaurant" do
    get restaurant_url(@restaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_url(@restaurant)
    assert_response :success
  end

  test "should update restaurant" do
    patch restaurant_url(@restaurant), params: { restaurant: { id: @restaurant.id, name: @restaurant.name } }
    assert_redirected_to restaurant_url(@restaurant)
  end

  test "should destroy restaurant" do
    assert_difference("Restaurant.count", -1) do
      delete restaurant_url(@restaurant)
    end

    assert_redirected_to root_url
  end

	test "should have approved checkbox for admins" do
		log_in_as(users(:one))
		get new_restaurant_url
		assert_select "input#restaurant_approved"
	end

	test "should not have approved checkbox for non-admins" do
		log_in_as(users(:two))
		get new_restaurant_url
		assert_select "input#restaurant_approved", false
	end
end
