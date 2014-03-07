class ShortStory < Story
  has_and_belongs_to_many :anthology, foreign_key: :collection_id
  validates :title, uniqueness: { scope: :type, message: 'already exists amongst all Short Stories.' }
end
