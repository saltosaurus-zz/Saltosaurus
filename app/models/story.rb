class Story < ActiveRecord::Base
  has_many :comments

  validates_presence_of :author
  validates_presence_of :title

  attr_accessor :title
  attr_reader :author


end
