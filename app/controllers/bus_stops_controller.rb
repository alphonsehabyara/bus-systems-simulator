class BusStopsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search]
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @bus_stops = BusStop.all
  #   @waypoints = []
  #   @bus_stops.each do |bus_stop|
  #     @waypoints << {location: "#{bus_stop.latitude}, #{bus_stop.longitude}", stopover: true}
  #   end
  end

  def show
    @bus_stop = BusStop.find_by(id: params[:id])
    @bus_stops = BusStop.all
  end

  def new
        
  end

  def create
    address = params[:address]
    coordinates = Geocoder.coordinates(address)
    bus_stop = BusStop.new({
      name: params[:name],
      address: address,
      latitude: coordinates[0],
      longitude: coordinates[1],
      stop_order: params[:stop_order]
      })    
    bus_stop.save
    # redirect_to "/bus_stops/#{bus_stop.id}"   
    redirect_to "/bus_stops"
  end

  def edit
    @bus_stop = BusStop.find_by(id: params[:id])
  end

  def update
    address = params[:address]
    coordinates = Geocoder.coordinates(address)
    bus_stop = BusStop.find_by(id: params[:id])
    bus_stop.assign_attributes({
      name: params[:name],
      address: address,
      latitude: coordinates[0],
      longitude: coordinates[1],
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
