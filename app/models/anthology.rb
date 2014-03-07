class Anthology < Collection
  has_many :appearances, foreign_key: :collection_id
  has_many :short_stories, through: :appearances
end
