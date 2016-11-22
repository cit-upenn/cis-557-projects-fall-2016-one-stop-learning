class AddLanguageToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :language, :string
  end
end
