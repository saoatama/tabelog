class AddForeignKeyReserves < ActiveRecord::Migration[5.2]
  def change
    add_reference :reserves, :restaurant
  end
end
