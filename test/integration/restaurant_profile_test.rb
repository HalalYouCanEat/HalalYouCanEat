require_relative '../test_helper'

class RestaurantProfileTest < ActionDispatch::IntegrationTest
  include ApplicationHelper

  def setup
    @restaurant = restaurants(:one)
  end

  test 'profile display' do
    get restaurant_path(@restaurant)
    assert_template 'restaurants/show'
    assert_select 'title', full_title(@restaurant.name)
    assert_select 'h2', text: "#{@restaurant.name}"
    assert_match @restaurant.reviews.count.to_s, response.body
    assert_select 'div.pagination'
    @restaurant.reviews.paginate(page: 1).each do |review|
      assert_match review.content, response.body
    end
  end
end
