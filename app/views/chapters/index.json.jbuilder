json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :number, :name, :contents
  json.url chapter_url(chapter, format: :json)
end
