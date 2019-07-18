class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :passenger_id
      t.timestamps
    end
    add_foreign_key :bookings, :passengers, column: :passenger_id
  end
end
