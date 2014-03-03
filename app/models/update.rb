class Update < ActiveRecord::Base
  validates :author, :presence => true
  validates :content, :presence => true
  validates :title, :presence => true
  validates :published_on, :presence => true

end
