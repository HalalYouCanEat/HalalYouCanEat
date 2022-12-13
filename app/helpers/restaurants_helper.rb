module RestaurantsHelper

  def cuisine_collector
    Restaurant.all.pluck(:cuisine).uniq.sort.map { |cuisine| [cuisine, cuisine] }
  end

  def city_collector
		Restaurant.all.pluck(:city).uniq.compact.sort.map { |city| [city, city] }
  end

  def on_home_page
    params[:action] != 'index' && params[:action] != 'search'
  end

	def collect_restaurant_ratings
		r = @restaurant.reviews.pluck(:rating)
		r.empty? ? 0 : (r.sum.to_f / r.size.to_f).truncate(2
		)
	end
	def calculate_distance(restaurant)
		user_distance = [40.7486538125, -73.98530431249999] # empire state building
		# get the distance from the user to the restaurant
		distance = Geocoder::Calculations.distance_between(user_distance, [restaurant.latitude, restaurant.longitude], {units: :mi})
		# update the restaurant with the distance from the user
		restaurant.update(distance_from_user: distance)
	end
end
