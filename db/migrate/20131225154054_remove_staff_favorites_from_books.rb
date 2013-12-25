class RemoveStaffFavoritesFromBooks < ActiveRecord::Migration
  def up
    remove_column :books, :staff_favorites
  end
  def down
    add_column :books, :staff_favorites, :boolean
  end
end
