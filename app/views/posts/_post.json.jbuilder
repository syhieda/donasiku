json.extract! post, :id, :User, :name, :address, :created_at, :updated_at
json.url post_url(post, format: :json)
