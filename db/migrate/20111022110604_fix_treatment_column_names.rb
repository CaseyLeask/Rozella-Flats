class FixTreatmentColumnNames < ActiveRecord::Migration
  def change
    rename_column :treatments, :treatment_date, :date
    rename_column :treatments, :treatment_type, :type
  end
end
