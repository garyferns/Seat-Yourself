class AddDefaultValueToPartySize < ActiveRecord::Migration
  def change
  	change_column :reservations, :party_size, :integer, :default => 0
  end
end
