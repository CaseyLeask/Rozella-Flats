class DropAndReAddFarmNumberColumn < ActiveRecord::Migration
  def change
    remove_column :kine, :farm_number
    add_column :kine, :farm_number, :string
  end
end
