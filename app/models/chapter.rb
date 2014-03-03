class Chapter < ActiveRecord::Base
  validates :novel_id, :presence => true
  validates :title, :number, :presence => true, :uniqueness => {:scope => :novel_id}
  validates :content, :presence => true
  validates :published_on, :presence => true
end
