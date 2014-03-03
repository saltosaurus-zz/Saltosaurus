class Story < ActiveRecord::Base
  has_many :comments

  validates :author, :presence => true
  validates :title, :presence => true
  validates :published_on, :presence => true
end
