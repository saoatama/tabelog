class CreateReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :reserves do |t|
      t.references :restaurant, foreign_key: true
      t.date :date
      t.integer :time
      t.integer :member
      t.string :name
      t.string :e_mail

      t.timestamps
    end
  end
end
