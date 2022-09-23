require "test_helper"

class HalalItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @halal_item = halal_items(:one)
  end

  test "should get index" do
    get halal_items_url
    assert_response :success
  end

  test "should get new" do
    get new_halal_item_url
    assert_response :success
  end

  test "should create halal_item" do
    assert_difference("HalalItem.count") do
      post halal_items_url, params: { halal_item: { description: @halal_item.description, gluten_free: @halal_item.gluten_free, id: @halal_item.id, name: @halal_item.name, restaurant_id: @halal_item.restaurant_id, vegan: @halal_item.vegan, vegetarian: @halal_item.vegetarian, verification: @halal_item.verification } }
    end

    assert_redirected_to halal_item_url(HalalItem.last)
  end

  test "should show halal_item" do
    get halal_item_url(@halal_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_halal_item_url(@halal_item)
    assert_response :success
  end

  test "should update halal_item" do
    patch halal_item_url(@halal_item), params: { halal_item: { description: @halal_item.description, gluten_free: @halal_item.gluten_free, id: @halal_item.id, name: @halal_item.name, restaurant_id: @halal_item.restaurant_id, vegan: @halal_item.vegan, vegetarian: @halal_item.vegetarian, verification: @halal_item.verification } }
    assert_redirected_to halal_item_url(@halal_item)
  end

  test "should destroy halal_item" do
    assert_difference("HalalItem.count", -1) do
      delete halal_item_url(@halal_item)
    end

    assert_redirected_to halal_items_url
  end
end
