class CreateKine < ActiveRecord::Migration
  def change
    create_table :kine do |t|
      t.string :name
      t.string :pic_number
      t.integer :farm_number
      t.text :pedigree
      t.text :treatments
      t.text :offspring
      t.binary :picture
      t.decimal :purchase_price
      t.decimal :sale_price
      t.text :calving_info
      t.text :property_movements
      t.text :miscellaneous_notes

      t.timestamps
    end
  end
end
