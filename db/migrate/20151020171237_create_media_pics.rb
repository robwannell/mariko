class CreateMediaPics < ActiveRecord::Migration
  def change
    create_table :media_pics do |t|
      t.string :title
      t.integer :order
      t.attachment :image

      t.timestamps null: false
    end
  end
end
