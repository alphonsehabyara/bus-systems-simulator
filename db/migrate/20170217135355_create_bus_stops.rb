class CreateBusStops < ActiveRecord::Migration[5.0]
  def change
    create_table :bus_stops do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :stop_order

      t.timestamps
    end
  end
end
