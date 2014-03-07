class Anthology < Collection
  has_many :appearances, foreign_key: :collection_id
  has_many :short_stories, through: :appearances
  belongs_to :author, class_name: 'User', foreign_key: :user_id
end
