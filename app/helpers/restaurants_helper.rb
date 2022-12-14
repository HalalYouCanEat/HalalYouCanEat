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

	# check if a restaurant has been favorited by user
	def favorited?(restaurant)
		r = current_user.favorites.where(restaurant_id: restaurant.id)
		r.any?
	end
end
