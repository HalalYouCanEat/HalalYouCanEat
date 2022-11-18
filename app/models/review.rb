class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  belongs_to :halal_item
  validates :user_id, presence: true
  validates :content, presence: true # , length: { maximum: 140 }
end
