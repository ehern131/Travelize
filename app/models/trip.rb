class Trip < ApplicationRecord
  belongs_to :user

  has_many :venue_trip_links #, inverse_of: :venue
  has_many :venues, through: :venue_trip_links

  accepts_nested_attributes_for :venues, allow_destroy: true
end
