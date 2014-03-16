class Novel < Collection
  has_many :chapters, foreign_key: :collection_id
  belongs_to :author, class_name: 'User', foreign_key: :user_id

  def latest_story_date
    chapters.last.published_on
  end

  def stories
    chapters
  end
end
