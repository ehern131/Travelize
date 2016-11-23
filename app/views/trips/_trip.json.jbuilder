json.extract! trip, :id, :title, :user_id, :start_time, :end_time, :created_at, :updated_at
json.url trip_url(trip, format: :json)