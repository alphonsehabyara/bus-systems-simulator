class Company < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :bus_routes
  ratyrate_rateable "service", "seats", "price"

end
