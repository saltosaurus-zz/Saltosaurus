class Update < ActiveRecord::Base
  belongs_to :author, class_name: 'User', foreign_key: :user_id

  validates :author, :presence => true
  validates :content, :presence => true
  validates :title, :presence => true
  validates :published_on, :presence => true

end
