json.array!(@comments) do |comment|
  json.extract! comment, :id, :contents, :author
  json.url comment_url(comment, format: :json)
end
