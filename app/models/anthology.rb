class Anthology < Collection
  has_many :appearances, foreign_key: :collection_id
  has_many :short_stories, through: :appearances
  belongs_to :author, class_name: 'User', foreign_key: :user_id

  def latest_story_date
    if short_stories.last
      short_stories.last.published_on
    else
      Date.today
    end
  end

  def stories
    short_stories
  end
end
