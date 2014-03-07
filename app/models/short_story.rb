class ShortStory < Story
  has_many :appearances, foreign_key: :collection_id
  has_many :anthologies, through: :appearances
  validates :title, uniqueness: { scope: :type, message: 'already exists amongst all Short Stories.' }
end
