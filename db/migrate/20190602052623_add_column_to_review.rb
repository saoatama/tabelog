class AddColumnToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :budget_id, :integer
    add_foreign_key :reviews, :budget_id, :budgets
  end
end
