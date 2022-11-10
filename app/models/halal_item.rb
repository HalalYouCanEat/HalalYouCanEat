class HalalItem < ApplicationRecord
	belongs_to :restaurant
	has_many :reviews, dependent: :nullify # changed from destroy to nullify
end
