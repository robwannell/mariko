class AddMetaToNews < ActiveRecord::Migration
  def change
    add_column :news, :meta, :text
  end
end
