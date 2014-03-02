json.array!(@updates) do |update|
  json.extract! update, :id, :author, :update, :name
  json.url update_url(update, format: :json)
end
