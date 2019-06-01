class DeleteColumnBudgetNight < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :budget_night
    rename_column :restaurants, :budget_day, :budget_id
  end
end
