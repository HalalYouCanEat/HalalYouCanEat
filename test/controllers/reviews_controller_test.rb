require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
  end

  test "should get index" do
    get reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_review_url
    assert_response :success
  end

  test "should create review" do
    assert_difference("Review.count") do
      post reviews_url, params: { review: { content: @review.content, date_of_review: @review.date_of_review, halal_item_id: @review.halal_item_id, id: 3, rating: @review.rating, restaurant_id: @review.restaurant_id, user_id: @review.users_id } }
    end

    assert_redirected_to review_url(Review.last)
  end

  test "should show review" do
    get review_url(@review)
    assert_response :success
  end

  test "should get edit" do
    get edit_review_url(@review)
    assert_response :success
  end

  test "should update review" do
    patch review_url(@review), params: { review: { content: @review.content, date_of_review: @review.date_of_review, halal_item_id: @review.halal_item_id, id: @review.id, rating: @review.rating, restaurant_id: @review.restaurant_id, user_id: @review.users_id } }
    assert_redirected_to review_url(@review)
  end
	
	# REMOVED FOR NOW, WILL COME BACK SOON
	# test "should destroy review" do
  #   assert_difference("Review.count", -1) do
  #     delete review_url(@review)
  #   end

  #   assert_redirected_to reviews_url
  # end
end
