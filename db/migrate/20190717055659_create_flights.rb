class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.integer :from_airport_id
      t.integer :to_airport_id
      t.datetime :start_datetime
      t.integer :duration
      t.integer :booking_id, null: true
      t.timestamps
    end
    add_foreign_key :flights, :airports, column: :from_airport_id
    add_foreign_key :flights, :airports, column: :to_airport_id
    add_foreign_key :flights, :bookings, column: :booking_id
  end
end
