class Collection < ActiveRecord::Base
  has_many :comments, as: :commentable
  belongs_to :author, class_name: 'User', foreign_key: :user_id

  validates :title, presence: true
  validates :author, presence: true
  validates :completed, inclusion: {in: [true, false]}
  validates :completed_on, presence: true, if: :completed
  validates :type, presence: true

  def latest_story_date
  end

  def stories
  end

  def get_archives
    archives = {}
    Collection.all.sort_by(&:latest_story_date).reverse.group_by{|x| x.completed_on.beginning_of_month if x.completed_on}.each do |date, stories|
      archives[date.strftime('%B %Y')] = stories.count if date
    end
    archives
  end
end
