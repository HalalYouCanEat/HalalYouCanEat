json.extract! review, :id, :id, :restaurant_id, :halal_item_id, :user_id, :date_of_review, :content, :rating, :created_at, :updated_at
json.url review_url(review, format: :json)
