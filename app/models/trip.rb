class Trip < ApplicationRecord
  belongs_to :user
  has_many :venues, through: :venue_trip_links
  has_many :venue_trip_links
end
