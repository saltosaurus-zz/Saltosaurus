class Collection < ActiveRecord::Base
  has_many :comments, as: :commentable
  validates :title, :presence => true
  validates :author, :presence => true
  validates :begun_on, :presence => true
end
