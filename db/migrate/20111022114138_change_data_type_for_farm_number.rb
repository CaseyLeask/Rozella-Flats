class ChangeDataTypeForFarmNumber < ActiveRecord::Migration
  def change
    change_column :kine, :farm_number, :string
  end
end
