class HalalItem < ApplicationRecord
	belongs_to :restaurant
	has_many :reviews, dependent: :destroy # changed from destroy to nullify
end
