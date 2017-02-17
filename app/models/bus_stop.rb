class BusStop < ApplicationRecord

  belongs_to :bus_route
  belongs_to :company
  
end
