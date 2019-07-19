class RemoveBookingFromFlgiht < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :flights, :bookings
    remove_column :flights, :booking_id
  end
end
