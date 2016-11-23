class CreateVenueTripLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :venue_trip_links do |t|
      t.references :trip, foreign_key: true
      t.references :venue, foreign_key: true

      t.timestamps
    end
  end
end
