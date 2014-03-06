class Chapter < Story
  belongs_to :novel, foreign_key: :collection_id
  validates :novel, presence: true
  validates :number, presence: true, uniqueness: { scope: :collection_id, message: 'already exists within this Novel.' }
  validates :title, uniqueness: { scope: :collection_id, message: 'already exists within this Novel.' }
end
