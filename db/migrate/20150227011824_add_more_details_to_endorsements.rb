class AddMoreDetailsToEndorsements < ActiveRecord::Migration
  def change
    change_column :endorsements, :type,  :string
  end
end
