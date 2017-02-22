class AddedColumnInBusRoutes < ActiveRecord::Migration[5.0]
  def change
    add_column :bus_stops, :company_id, :integer
  end
end
