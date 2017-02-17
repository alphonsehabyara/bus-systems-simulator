class Company < ApplicationRecord

  has_many :bus_routes, through: :destination
  has_many :bust_stops
  
end
