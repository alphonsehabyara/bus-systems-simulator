class BusStop < ApplicationRecord

  belongs_to :bus_route, optional:true
  
end
