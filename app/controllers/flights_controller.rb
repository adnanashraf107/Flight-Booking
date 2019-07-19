class FlightsController < ApplicationController
  def index
    @airport = Airport.all
    @flights = Flight.search(params) if params[:from].present?
  end
end
