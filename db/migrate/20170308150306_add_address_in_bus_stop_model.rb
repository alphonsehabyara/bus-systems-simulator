class AddAddressInBusStopModel < ActiveRecord::Migration[5.0]
  def change
    add_column :bus_stops, :address, :string
  end
end
