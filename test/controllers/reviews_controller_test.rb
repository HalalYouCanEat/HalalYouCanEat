require_relative '../test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:two)
    @admin = users(:one)
    @user = users(:two)
    @other_user = users(:three)
  end

  test 'should get index' do
    get reviews_url
    assert_response :success
  end

  test 'should create review' do
    log_in_as(@user)
    assert_difference('Review.count') do
      post reviews_url, params: { review: { content: @review.content, date_of_review: @review.date_of_review, halal_item_id: @review.halal_item_id, id: 4, rating: @review.rating, restaurant_id: @review.restaurant_id, user_id: @review.user_id } }
    end
		# when a review is created, it should stay on the restaurant page, causing the original test to fail
    # assert_redirected_to review_url(Review.first)
		assert_redirected_to restaurant_url(Restaurant.first)
  end

  test 'should show review' do
    get review_url(@review)
    assert_response :success
  end

  test 'should get edit' do
    log_in_as(@user)
    get edit_review_path(@review)
    assert_response :success
  end

  test 'should update review' do
    log_in_as(@admin)
    patch review_url(@review), params: { review: { content: @review.content, date_of_review: @review.date_of_review, halal_item_id: @review.halal_item_id, id: @review.id, rating: @review.rating, restaurant_id: @review.restaurant_id, user_id: @review.user_id } }
    assert_redirected_to review_url(@review)
  end

  test 'should redirect create when not logged in' do
    assert_no_difference 'Review.count' do
      post reviews_url, params: { review: { content: @review.content, date_of_review: @review.date_of_review, halal_item_id: @review.halal_item_id, id: 4, rating: @review.rating, restaurant_id: @review.restaurant_id, user_id: @review.user_id } }
    end
    assert_redirected_to login_url
  end

  test 'should allow destroy when user is admin' do
    log_in_as(@admin)
    assert_difference('Review.count', -1) do
      delete review_url(@review)
    end
    assert_redirected_to root_url
  end

  test 'should allow destroy if review.user_id = user.id' do
    log_in_as(@user)
    assert_difference('Review.count', -1) do
      delete review_url(@review)
    end
    assert_redirected_to root_url
  end

  test 'should redirect destroy when not logged in' do
    assert_no_difference 'Review.count' do
      delete review_path(@review)
    end
    assert_response :see_other
    assert_redirected_to login_url
  end

  test 'should redirect destroy when not admin and review.user_id != user.id' do
    assert_no_difference 'Review.count' do
      delete review_path(@review)
    end
    assert_response :see_other
    assert_redirected_to login_url
  end
end
