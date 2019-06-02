json.extract! review, :id, :user_id, :restaurant_id, :title, :rating, :review, :created_at, :updated_at
json.url review_url(review, format: :json)
