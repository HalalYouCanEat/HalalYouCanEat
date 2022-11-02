require "test_helper"

class MapTest < ActionDispatch::IntegrationTest

	def setup
		@user = users(:one)
	end

	test "map display" do
		log_in_as(@user)
		get root_url
		assert_template 'static_pages/_map'
		assert_select 'div#map'
	end

	test "map display with no user" do
		get root_url
		assert_template 'static_pages/_map'
		assert_select 'div#map'
	end
end