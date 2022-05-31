json.extract! bloggy, :id, :title, :content, :created_at, :updated_at
json.url bloggy_url(bloggy, format: :json)
