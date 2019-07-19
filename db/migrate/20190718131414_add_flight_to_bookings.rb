class AddFlightToBookings < ActiveRecord::Migration[6.0]
  def change
    add_references :bookings, :flight, index: true
  end
end
