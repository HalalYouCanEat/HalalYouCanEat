# require "application_system_test_case"

# class HalalItemsTest < ApplicationSystemTestCase
#   setup do
#     @halal_item = halal_items(:one)
#   end

#   test "visiting the index" do
#     visit halal_items_url
#     assert_selector "h1", text: "Halal items"
#   end

#   test "should create about_halal item" do
#     visit halal_items_url
#     click_on "New about_halal item"

#     fill_in "Description", with: @halal_item.description
#     check "Gluten free" if @halal_item.gluten_free
#     fill_in "Id", with: 4
#     fill_in "Name", with: @halal_item.name
#     fill_in "Restaurant", with: @halal_item.restaurant_id
#     check "Vegan" if @halal_item.vegan
#     check "Vegetarian" if @halal_item.vegetarian
#     fill_in "Verification", with: @halal_item.verification
#     click_on "Create Halal item"

#     assert_text "Halal item was successfully created"
#     click_on "Back"
#   end

#   test "should update Halal item" do
#     visit halal_item_url(@halal_item)
#     click_on "Edit this about_halal item", match: :first

#     fill_in "Description", with: @halal_item.description
#     check "Gluten free" if @halal_item.gluten_free
#     fill_in "Id", with: @halal_item.id
#     fill_in "Name", with: @halal_item.name
#     fill_in "Restaurant", with: @halal_item.restaurant_id
#     check "Vegan" if @halal_item.vegan
#     check "Vegetarian" if @halal_item.vegetarian
#     fill_in "Verification", with: @halal_item.verification
#     click_on "Update Halal item"

#     assert_text "Halal item was successfully updated"
#     click_on "Back"
#   end

#   test "should destroy Halal item" do
#     visit halal_item_url(@halal_item)
#     click_on "Destroy this about_halal item", match: :first

#     assert_text "Halal item was successfully destroyed"
#   end
# end
