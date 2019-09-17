class Kine < ActiveRecord::Base
  self.table_name = 'kine'

  has_and_belongs_to_many :treatments
end
