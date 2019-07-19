class BookingsController < ApplicationController

  def new
    @flight = Flight.find(params[:selected_flight])
    @total_passengers = session[:total_passengers]
    @booking = Booking.new
  end

end
