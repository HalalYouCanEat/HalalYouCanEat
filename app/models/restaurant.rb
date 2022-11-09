class Restaurant < ApplicationRecord
	has_many :reviews, dependent: :nullify # changed from destroy to nullify
	has_many :halal_items, dependent: :nullify # changed from destroy to nullify
end
