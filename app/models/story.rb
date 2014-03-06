class Story < ActiveRecord::Base
  has_many :comments, as: :commentable

  validates :author, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :published_on, presence: true
end
