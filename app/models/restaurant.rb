class Restaurant < ApplicationRecord
    belongs_to :budget
    has_and_belongs_to_many :categories
end
