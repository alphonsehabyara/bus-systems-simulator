class SearchesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def search_results
    search_query = params[:search_input]
    @companies = Company.where("name ILIKE ? OR description ILIKE ?", "%#{search_query}%", "%#{search_query}%")
    @bus_routes = BusRoute.where("name ILIKE ? OR description ILIKE ?", "%#{search_query}%", "%#{search_query}%")
    @bus_stops = BusStop.where("name ILIKE ? OR address ILIKE ?", "%#{search_query}%", "%#{search_query}%")
    
    if @companies.empty? || @bus_stops.empty? || @bus_routes.empty?
      flash[:info] = "No results found"
    end
  end

end
