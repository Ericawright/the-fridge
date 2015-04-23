class AddUserToFavorites < ActiveRecord::Migration
  def change
    add_reference :favorites, :user
    add_foreign_key :favorites, :users
  end
end
