json.array!(@novels) do |novel|
  json.extract! novel, :id
  json.url novel_url(novel, format: :json)
end
