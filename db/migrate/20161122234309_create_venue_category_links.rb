class CreateVenueCategoryLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :venue_category_links do |t|
      t.references :venue, foreign_key: true
      t.references :category, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
