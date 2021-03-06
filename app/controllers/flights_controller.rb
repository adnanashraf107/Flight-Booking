class FlightsController < ApplicationController
  def index
    @airport = Airport.all
    @flights = Flight.search(params) if params[:from].present?
    session[:total_passengers] = params[:total_passengers]
  end
end
