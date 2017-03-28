class BusRoutesController < ApplicationController

  def index
    @bus_routes = BusRoute.all
    @bus_stops = BusStop.all   
  end

  def show
    @bus_route = BusRoute.find_by(id: params[:id])    
    @bus_stops = @bus_route.bus_stops
  end

  def new
    @us_routes = BusRoute.new
  end

  def create
    bus_route = BusRoute.new({
      name: params[:name],
      description: params[:description]
      })
    bus_route.save
    redirect_to "/bus_routes/#{bus_route.id}"   
  end

  def edit
    @bus_route = BusRoute.find_by(id: params[:id])
  end

  def update
    bus_route = BusRoute.find_by(id: params[:id])
    bus_route.assign_attributes({
      name: params[:name],
      description: params[:description]
      })
    bus_route.save
    flash[:success] = "Bus Route Updated!"
    redirect_to "/bus_routes"  
  end

  def destroy
    @bus_route = BusRoute.find_by(id: params[:id])
    @bus_route.destroy
    flash[:success] = "Bus Route Deleted!"
    redirect_to "/bus_routes"
  end

end
