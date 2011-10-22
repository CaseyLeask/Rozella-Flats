# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111022110604) do

  create_table "kine", :force => true do |t|
    t.string   "name"
    t.string   "nlis"
    t.integer  "farm_number"
    t.text     "pedigree"
    t.text     "offspring"
    t.binary   "picture"
    t.decimal  "purchase_price"
    t.decimal  "sale_price"
    t.text     "calving_info"
    t.text     "property_movements"
    t.text     "miscellaneous_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kine_treatments", :id => false, :force => true do |t|
    t.integer "cow_id"
    t.integer "treatment_id"
  end

  create_table "treatments", :force => true do |t|
    t.date     "date"
    t.string   "type"
    t.string   "notes"
    t.integer  "cow_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "treatments", ["cow_id"], :name => "index_treatments_on_cow_id"

end
