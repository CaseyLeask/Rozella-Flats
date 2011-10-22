class RenamePicnToNlis < ActiveRecord::Migration
  def change
    rename_column :kine, :pic_number, :nlis
  end
end
