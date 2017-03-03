class BusRoute < ApplicationRecord

  has_many :bus_stops
  belongs_to :company, optional:true
  
end
