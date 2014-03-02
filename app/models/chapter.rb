class Chapter < ActiveRecord::Base
  validates_presence_of :novel_id
  validates_presence_of :title, :number
  validates_presence_of :contents
  validates_presence_of :published_on

  attr_accessor :title, :number, :contents
  attr_reader :published_on


end
