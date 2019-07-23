class BookingsController < ApplicationController

  def new
    @flight = Flight.find(params[:selected_flight])
    @total_passengers = session[:total_passengers]
    @booking = @flight.bookings.build
    @booking.build_passenger
  end

  def create
    booking = Booking.new(passenger_params)    
    if booking.save
      flash.notice = "Your booking is created."
      PassengerMailer.confirmation_email(booking).deliver_now
      redirect_to :action => 'show', :id => booking.id
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def passenger_params
    params.require(:booking).permit(:flight_id, passenger_attributes: [:name, :email])
  end

end
