json.array!(@stories) do |story|
  json.extract! story, :id, :name, :story, :author
  json.url story_url(story, format: :json)
end
