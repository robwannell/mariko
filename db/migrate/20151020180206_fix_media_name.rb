class FixMediaName < ActiveRecord::Migration
  def change
    rename_column :media_pics, :order, :rank
  end
end
