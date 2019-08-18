class Reserve < ApplicationRecord
    has_and_belongs_to_many :restaurants
    has_and_belongs_to_many :users
end
