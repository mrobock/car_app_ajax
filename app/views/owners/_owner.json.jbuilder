json.extract! owner, :id, :name, :username, :password, :created_at, :updated_at
json.url owner_url(owner, format: :json)