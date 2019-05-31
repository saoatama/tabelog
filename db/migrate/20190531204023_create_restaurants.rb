class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :title
      t.integer :rating
      t.integer :budget_day
      t.integer :budget_night
      t.text :address
      t.integer :menu

      t.timestamps
    end
  end
end
