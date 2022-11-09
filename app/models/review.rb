class Review < ApplicationRecord
	belongs_to :restaurant
	belongs_to :user
	belongs_to :halal_item
end
