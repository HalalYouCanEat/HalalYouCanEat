module RestaurantsHelper
  def build_order_link(column:, label:)
    if column == session.dig('restaurant_filters', 'column')
      link_to(label, list_restaurants_path(column:, direction: next_direction))
    else
      link_to(label, list_restaurants_path(column:, direction: 'asc'))
    end
  end

  def next_direction
    session['restaurant_filters']['direction'] == 'asc' ? 'desc' : 'asc'
  end

  def sort_indicator
    tag.span(class: "sort sort-#{session['restaurant_filters']['direction']}")
  end

  def cuisine_collector
    Restaurant.all.pluck(:cuisine).uniq.sort.map { |cuisine| [cuisine, cuisine] }
  end

  def city_collector
    Restaurant.all.pluck(:city).uniq.sort.map { |city| [city, city] }
  end

  def on_home_page
    params[:action] != 'index' && params[:action] != 'search'
  end
end
