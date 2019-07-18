class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"
  belongs_to :booking, class_name: "Booking", foreign_key: "id", optional: true

  def self.search(search_options)
    datetime = search_options[:start_datetime]
    Flight.where(["from_airport_id = ? and to_airport_id = ? and start_datetime LIKE ?",search_options[:from],search_options[:to],"#{datetime}%"])
  end

end
