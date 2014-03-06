class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true

  validates :commentable_id, :presence => true
  validates :author, :presence => true
  validates :content, :presence => true, uniqueness: { scope: :commentable_id }
end
