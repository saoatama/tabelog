class CategoriesRestaurant < ApplicationRecord
    has_and_belongs_to_many :categories
    has_and_belongs_to_many :restaurants
end
