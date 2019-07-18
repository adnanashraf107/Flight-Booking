class FlightsController < ApplicationController


  def index
    @airport = Airport.all
    if params[:from] != ""
      @flights = Flight.search(params) 
    end
  end

end
