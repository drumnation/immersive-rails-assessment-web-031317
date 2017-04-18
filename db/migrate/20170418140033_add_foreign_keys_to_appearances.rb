class AddForeignKeysToAppearances < ActiveRecord::Migration[5.0]
  def change
    add_reference :appearances, :episode, foreign_key: true
    add_reference :appearances, :guest, foreign_key: true
  end
end
