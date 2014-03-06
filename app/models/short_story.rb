class ShortStory < Story
  belongs_to :anthology, foreign_key: :collection_id
  validates :title, uniqueness: { scope: :type, message: 'already exists amongst all Short Stories.' }
end
