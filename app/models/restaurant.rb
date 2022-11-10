class Restaurant < ApplicationRecord
	has_many :reviews, dependent: :delete_all # changed from destroy to nullify
	has_many :halal_items, dependent: :delete_all # changed from destroy to nullify
end
