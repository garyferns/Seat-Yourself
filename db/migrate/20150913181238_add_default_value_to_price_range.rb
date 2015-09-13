class AddDefaultValueToPriceRange < ActiveRecord::Migration
  def change
  	change_column :restaurants, :price_range, :integer, :default => 0
  end
end
