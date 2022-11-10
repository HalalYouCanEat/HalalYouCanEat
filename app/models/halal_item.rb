class HalalItem < ApplicationRecord
	belongs_to :restaurant
	has_many :reviews, dependent: :delete_all # changed from destroy to nullify
end
