require_relative '../test_helper'

class ReviewTest < ActiveSupport::TestCase
  def setup
    @user = users(:one)
    @review = @user.reviews.build(content: 'Lorem ipsum')
  end

  test 'should be valid' do
    assert_not @review.valid?
  end

  test 'user id should be present' do
    @review.user_id = nil
    assert_not @review.valid?
    @review.user_id = '   '
    assert_not @review.valid?
  end

  test 'content should be present' do
    @review.content = nil
    assert_not @review.valid?
    @review.content = '   '
    assert_not @review.valid?
  end

  test 'content should be at most 140 characters' do
    @review.content = 'a' * 1001
    assert_not @review.valid?
  end
end
