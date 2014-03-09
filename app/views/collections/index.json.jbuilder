json.array!(@collections) do |collection|
  json.extract! collection, :id, :title, :author, :begun_on
  json.url collection_url(collection, format: :json)
end
