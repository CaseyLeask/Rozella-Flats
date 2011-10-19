class RemoveTreatmentColumn < ActiveRecord::Migration
  def up
    remove_column :kine, :treatments
  end

  def down
    add_column :kine, :treatments
  end
end
