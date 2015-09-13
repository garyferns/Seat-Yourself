class CreateTimeFieldForReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :reso_time, :string
  end
end
