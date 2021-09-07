json.extract! cart, :id, :user_id, :instrument_id, :data, :created_at, :updated_at
json.url cart_url(cart, format: :json)
