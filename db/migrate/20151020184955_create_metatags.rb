class CreateMetatags < ActiveRecord::Migration
  def change
    create_table :metatags do |t|
      t.string :pagetitle
      t.text :keywords
      t.text :description

      t.timestamps null: false
    end
  end
end
