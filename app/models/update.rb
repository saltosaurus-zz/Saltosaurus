class Update < ActiveRecord::Base
  validates_presence_of :author
  validates_presence_of :content
  validates_presence_of :title
  validates_presence_of :published_on

end
