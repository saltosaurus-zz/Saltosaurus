class Anthology < Collection
  has_and_belongs_to_many :short_stories, foreign_key: :collection_id
end
