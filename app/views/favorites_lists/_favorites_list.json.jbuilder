json.extract! favorites_list, :id, :name, :created_at, :updated_at
json.url favorites_list_url(favorites_list, format: :json)
