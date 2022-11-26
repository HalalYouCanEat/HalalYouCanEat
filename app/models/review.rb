class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  belongs_to :halal_item, optional: true
  default_scope -> { order(created_at: :desc) }
  validates :user, presence: true
  validates :restaurant, presence: true
  validates :content, presence: true, length: { maximum: 1000 }
end
