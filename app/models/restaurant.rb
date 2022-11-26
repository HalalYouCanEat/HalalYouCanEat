class Restaurant < ApplicationRecord
	has_many :reviews, dependent: :destroy # changed from destroy to nullify
	has_many :halal_items, dependent: :destroy # changed from destroy to nullify
end
