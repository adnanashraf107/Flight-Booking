class AddFligtToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :flight_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    add_foreign_key :bookings, :flights
  end
end
