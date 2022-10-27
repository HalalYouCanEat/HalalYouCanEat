class Restaurant < ApplicationRecord
	FILTER_PARAMS = %i[name column direction].freeze

  scope :by_name, ->(query) { where('restaurant.name ilike ?', "%#{query}%") }

  def self.filter(filters)
    Restaurant.by_name(filters['name']).order("#{filters['column']} #{filters['direction']}")
	end
end
