class AddDetailsToEndorsements < ActiveRecord::Migration
  def change
    add_column :endorsements, :firstname, :string
    add_column :endorsements, :lastname, :string
    add_column :endorsements, :type, :int
  end
end
