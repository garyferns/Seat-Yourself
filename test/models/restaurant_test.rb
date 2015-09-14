require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  

	test "must not save if name does not exist" do 
		restaurant = Restaurant.create(address: "123 Somestreet", capacity: 33)
		assert_not restaurant.valid?
		end
end
