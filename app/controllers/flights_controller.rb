class FlightsController < ApplicationController


  def index
    @airport = Airport.all
    if params[:start_datetime] != nil
      @flights = Flight.search(params) 
    end
  end

end
