class CreateAdminCategoriesRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_restaurants do |t|
      t.references :category, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
