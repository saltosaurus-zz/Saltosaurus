class Update < ActiveRecord::Base
  validates_presence_of :author
  validates_presence_of :contents
  validates_presence_of :title
  validates_presence_of :published_on

  attr_accessor :title, :contents
  attr_reader :published_on, :author


end
