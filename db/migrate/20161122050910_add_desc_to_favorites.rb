class AddDescToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :description, :string
  end
end
