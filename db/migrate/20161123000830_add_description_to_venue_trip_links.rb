class AddDescriptionToVenueTripLinks < ActiveRecord::Migration[5.0]
  def change
    add_column :venue_trip_links, :description, :text
  end
end
