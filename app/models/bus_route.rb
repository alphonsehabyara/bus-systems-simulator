class BusRoute < ApplicationRecord

  has_many :companies, through: :destination
  has_many :bus_stops
  
end
