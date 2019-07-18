class Passenger < ApplicationRecord
  has_one :booking, class_name: "Booking", foreign_key: "id"
end
