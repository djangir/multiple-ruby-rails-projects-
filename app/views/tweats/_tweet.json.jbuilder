json.extract! tweet, :id, :title, :tweet, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
