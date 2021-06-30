json.extract! series, :id, :title, :content, :created_at, :updated_at
json.url series_url(series, format: :json)
json.content series.content.to_s
