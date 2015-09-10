class AddAttributesToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :neighbourhood, :string
    add_column :restaurants, :price_range, :integer
    add_column :restaurants, :summary, :text
    add_column :restaurants, :open_time, :datetime
    add_column :restaurants, :close_time, :datetime
  end
end
