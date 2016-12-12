class AddOwnerToUserFavorites < ActiveRecord::Migration
  def change
    add_column :user_favorites, :owner, :string
  end
end
