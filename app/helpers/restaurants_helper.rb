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
end
