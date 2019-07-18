class Booking < ApplicationRecord
  belongs_to :passenger, class_name: "Passenger"
  has_one :flight, class_name: "Flight", foreign_key: "id"
end
