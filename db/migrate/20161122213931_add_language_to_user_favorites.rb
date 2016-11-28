class AddLanguageToUserFavorites < ActiveRecord::Migration
  def change
    add_column :user_favorites, :language, :string
  end
end
