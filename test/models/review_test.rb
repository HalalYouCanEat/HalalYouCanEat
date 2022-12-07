require_relative '../test_helper'

class ReviewTest < ActiveSupport::TestCase
  def setup
    @admin = users(:one)
    @restaurant = restaurants(:one)
    @review = @restaurant.reviews.build(content: 'Lorem ipsum', user_id: @admin.id)
  end

  test 'should be valid' do
    assert @review.valid?
  end

  test 'user id should be present' do
    @review.user_id = nil
    assert_not @review.valid?
    @review.user_id = '   '
    assert_not @review.valid?
  end

  test 'restaurant id should be present' do
    @review.restaurant_id = nil
    assert_not @review.valid?
    @review.restaurant_id = '   '
    assert_not @review.valid?
  end

  test 'content should be present' do
    @review.content = nil
    assert_not @review.valid?
    @review.content = '   '
    assert_not @review.valid?
  end

  test 'content should be at most 1001 characters' do
    @review.content = 'a' * 1001
    assert_not @review.valid?
  end

  test 'order should be most recent first' do
    assert_equal reviews(:most_recent), Review.first
  end
end
