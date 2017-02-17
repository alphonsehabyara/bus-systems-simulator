class Destination < ApplicationRecord

  belongs_to :company
  has_many :bus_stops
  
end
