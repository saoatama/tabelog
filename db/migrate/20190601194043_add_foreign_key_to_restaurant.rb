class AddForeignKeyToRestaurant < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :restaurants, :budgets, name: :budget_day
    add_foreign_key :restaurants, :budgets, name: :budget_night
  end
end
