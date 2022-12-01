require_relative '../test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @admin = User.new(name: 'Example User', email: 'user@example.com',
                      password: 'foobar', password_confirmation: 'foobar')
    @restaurant = restaurants(:one)
  end

  test 'should be valid' do
    assert @admin.valid?
  end

  test 'name should be present' do
    @admin.name = '     '
    assert_not @admin.valid?
  end

  test 'email should be present' do
    @admin.email = '     '
    assert_not @admin.valid?
  end

  test 'name should not be too long' do
    @admin.name = 'a' * 51
    assert_not @admin.valid?
  end

  test 'email should not be too long' do
    @admin.email = "#{'a' * 244}@example.com"
    assert_not @admin.valid?
  end

  test 'email validation should accept valid addresses' do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @admin.email = valid_address
      assert @admin.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test 'email validation should reject invalid addresses' do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @admin.email = invalid_address
      assert_not @admin.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test 'email addresses should be unique' do
    duplicate_user = @admin.dup
    duplicate_user.email = @admin.email.upcase
    @admin.save
    assert_not duplicate_user.valid?
  end

  test 'email addresses should be saved as lowercase' do
    mixed_case_email = 'Foo@ExAMPle.CoM'
    @admin.email = mixed_case_email
    @admin.save
    assert_equal mixed_case_email.downcase, @admin.reload.email
  end

  test 'password should be present (nonblank)' do
    @admin.password = ' ' * 6
    assert_not @admin.valid?
  end

  test 'password should have a minimum length' do
    @admin.password = 'a' * 5
    assert_not @admin.valid?
  end

  test 'authenticated? should return false for a user with nil digest' do
    assert_not @admin.authenticated?(:remember, '')
  end

  test 'associated reviews should be destroyed' do
    @admin.save
    @admin.reviews.create!(content: 'Lorem ipsum', restaurant_id: @restaurant.id)
    assert_difference 'Review.count', -1 do
      @admin.destroy
    end
  end
end
