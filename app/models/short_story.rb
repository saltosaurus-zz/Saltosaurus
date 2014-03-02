class ShortStory < ActiveRecord::Base
  validates_presence_of :story
  validates_presence_of :published_on

  attr_accessor :story
  attr_reader :published_on

end
