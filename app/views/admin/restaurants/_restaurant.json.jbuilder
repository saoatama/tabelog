json.extract! restaurant, :id, :name, :title, :rating, :budget_day, :budget_night, :address, :menu, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
