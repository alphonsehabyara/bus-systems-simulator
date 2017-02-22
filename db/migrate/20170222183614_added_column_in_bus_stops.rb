class AddedColumnInBusStops < ActiveRecord::Migration[5.0]
  def change
    add_column :bus_stops, :bus_route_id, :integer
  end
end
