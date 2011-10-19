class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.date :treatment_date
      t.string :treatment_type
      t.string :notes
      t.references :cow

      t.timestamps
    end
    add_index :treatments, :cow_id
  end
end
