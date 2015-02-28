class AddEvenMoreDetailsToEndorsements < ActiveRecord::Migration
  def change
    rename_column :endorsements, :type, :category
  end
end
