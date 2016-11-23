json.extract! venue, :id, :name, :address, :hours_of_op, :link, :user_id, :trip_id, :category_id, :created_at, :updated_at
json.url venue_url(venue, format: :json)