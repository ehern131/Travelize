class CreateVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :hours_of_op
      t.string :link
      t.integer :user_id
      t.integer :trip_id
      t.integer :category_id

      t.timestamps
    end
  end
end
