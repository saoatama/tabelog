class AddForeignKeyToReserves < ActiveRecord::Migration[5.2]
  def change
    remove_reference :reserves, :restaurant
    remove_column :reserves, :restaurant_id
    add_reference :reserves, :restaurant, foreign_key: true
  end
end
