class Venue < ApplicationRecord
  has_many :trips, through: :venue_trip_links
  has_many :venue_trip_links
  has_many :venue_category_links
  has_many :categories, through: :venue_category_links
end
