json.extract! instrument, :id, :brand, :description, :condition, :finish, :title, :price, :created_at, :updated_at
json.url instrument_url(instrument, format: :json)
