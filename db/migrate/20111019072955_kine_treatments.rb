class KineTreatments < ActiveRecord::Migration
  def change
    create_table :kine_treatments, :id => false do |t|
      t.integer :cow_id
      t.integer :treatment_id
    end
  end
end
