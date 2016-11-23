class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.integer :user_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
