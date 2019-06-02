class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  belongs_to :budget
end
