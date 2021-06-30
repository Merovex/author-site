json.extract! book, :id, :series_id, :title, :slug, :is_featured, :blurb, :excerpt, :created_at, :updated_at
json.url book_url(book, format: :json)
json.blurb book.blurb.to_s
json.excerpt book.excerpt.to_s
