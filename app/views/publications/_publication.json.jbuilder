json.extract! publication, :id, :title, :isbn, :description, :published_at, :created_at, :updated_at
json.url publication_url(publication, format: :json)
