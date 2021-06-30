json.extract! praise, :id, :book_id, :title, :quote, :created_at, :updated_at
json.url praise_url(praise, format: :json)
json.quote praise.quote.to_s
