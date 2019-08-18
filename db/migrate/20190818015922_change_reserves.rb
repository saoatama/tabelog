class ChangeReserves < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :reserves, :users
    remove_foreign_key :reserves, :restaurants
    remove_column :reserves, :restaurants_id
    remove_column :reserves, :users_id
  end
end
