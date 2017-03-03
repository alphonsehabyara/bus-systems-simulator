class BusStopsController < ApplicationController

  def index
    @bus_stops = BusStop.all    
  end

  def show
    @bus_stop = BusStop.find_by(id: params[:id])    
  end

  def new
        
  end

  def create
    bus_stop = BusStop.new({
      name: params[:name],
      latitude: params[:latitude],
      longitude: params[:longitude],
      stop_order: params[:stop_order]
      })
    bus_stop.save
    redirect_to "/bus_stops/#{bus_stop.id}"   
  end

  def edit
    @bus_stop = BusStop.find_by(id: params[:id])
  end

  def update
    bus_stop = BusStop.find_by(id: params[:id])
    bus_stop.assign_attributes({
      name: params[:name],
      latitude: params[:latitude],
      longitude: params[:longitude],
      stop_order: params[:stop_order]
      })
    bus_stop.save
    flash[:success] = "Bus Stop Updated!"
    redirect_to "/bus_stops"  
  end

  def destroy
    @bus_stop = BusStop.find_by(id: params[:id])
    @bus_stop.destroy
    flash[:success] = "Bus Stop Deleted!"
    redirect_to "/bus_stops"
  end

end
