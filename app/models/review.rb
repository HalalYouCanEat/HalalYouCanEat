class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user, optional: true
  belongs_to :halal_item, optional: true
  validates :content, presence: true, length: { maximum: 1000 }
end
