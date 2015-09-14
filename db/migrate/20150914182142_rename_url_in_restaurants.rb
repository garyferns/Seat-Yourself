class RenameUrlInRestaurants < ActiveRecord::Migration
  def change
    rename_column :restaurants, :url, :image
  end
end
