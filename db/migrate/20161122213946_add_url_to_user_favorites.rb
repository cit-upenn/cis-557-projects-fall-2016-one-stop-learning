class AddUrlToUserFavorites < ActiveRecord::Migration
  def change
    add_column :user_favorites, :url, :string
  end
end
