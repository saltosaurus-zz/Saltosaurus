class ShortStory < Story
  has_many :appearances, foreign_key: :story_id
  has_many :anthologies, through: :appearances
  belongs_to :author, class_name: 'User', foreign_key: :user_id

  validates :title, uniqueness: { scope: :type, message: 'already exists amongst all Short Stories.' }
end
