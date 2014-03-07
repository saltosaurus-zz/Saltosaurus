class Collection < ActiveRecord::Base
  has_many :comments, as: :commentable
  belongs_to :author, class_name: 'User', foreign_key: :user_id

  validates :title, :presence => true
  validates :author, :presence => true
  validates :begun_on, :presence => true
end
