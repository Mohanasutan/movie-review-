json.extract! request, :id, :movie_name, :created_at, :updated_at
json.url request_url(request, format: :json)
