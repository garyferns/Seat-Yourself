class AddNameAttributeToRestaurant < ActiveRecord::Migration
  def change
  	add_column :restaurants, :name, :string
  end
end
