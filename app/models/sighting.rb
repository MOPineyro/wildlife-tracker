class Sighting < ActiveRecord::Base
  belongs_to :species
  belongs_to :region
  validates :location, :presence => true
end
