class Comment < ActiveRecord::Base
  belongs_to :story

  validates :story_id, :presence => true
  validates :author, :presence => true
  validates :content, :presence => true
end
