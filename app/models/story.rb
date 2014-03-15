class Story < ActiveRecord::Base
  has_many :comments, as: :commentable
  belongs_to :author, class_name: 'User', foreign_key: :user_id

  validates :author, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :published_on, presence: true
  validates :type, presence: true
end
