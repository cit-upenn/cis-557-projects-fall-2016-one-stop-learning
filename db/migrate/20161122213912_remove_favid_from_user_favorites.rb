class RemoveFavidFromUserFavorites < ActiveRecord::Migration
  def change
    remove_column :user_favorites, :fav_id, :integer
  end
end
