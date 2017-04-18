class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :appearances, :appearance_rating, :rating
  end
end
