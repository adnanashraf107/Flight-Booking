class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"
  has_many :bookings
  
  scope :search, -> (search_options) { where("from_airport_id = ? and to_airport_id = ? and start_datetime LIKE ?", search_options[:from], search_options[:to], "#{search_options[:start_datetime]}%") }
end
