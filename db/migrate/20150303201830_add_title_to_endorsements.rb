class AddTitleToEndorsements < ActiveRecord::Migration
  def change
    add_column :endorsements, :title, :string
    add_column :endorsements, :organization, :string
    add_column :endorsements, :rank, :int
  end
end
