json.array!(@short_stories) do |short_story|
  json.extract! short_story, :id
  json.url short_story_url(short_story, format: :json)
end
