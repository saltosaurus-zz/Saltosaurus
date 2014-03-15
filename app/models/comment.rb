class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :author, class_name: 'User', foreign_key: :user_id

  validates :commentable_id, :presence => true
  validates :author, :presence => true
  validates :content, :presence => true, uniqueness: { scope: :commentable_id }
end
