class CreateReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :reserves do |t|
      t.references :restaurants, foreign_key: true
      t.references :users, foreign_key: true
      t.date :date, null: false
      t.integer :time, null: false
      t.string :name, null: false
      t.integer :member, null: false
      t.string :e_mail, null: false
      t.boolean :is_smoke, default: 0
      t.boolean :is_reserved, default: 0

      t.timestamps
    end
  end
end
