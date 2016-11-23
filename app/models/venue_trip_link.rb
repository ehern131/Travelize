class VenueTripLink < ApplicationRecord
  belongs_to :trip
  belongs_to :venue
end
