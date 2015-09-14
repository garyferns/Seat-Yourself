class DeleteResoTimeAttribute < ActiveRecord::Migration
  def change
  	remove_column :reservations, :reso_time
  end
end
