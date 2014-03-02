class Story < ActiveRecord::Base
  has_many :comments

  validates_presence_of :author
  validates_presence_of :name
  validates_presence_of :story


end
