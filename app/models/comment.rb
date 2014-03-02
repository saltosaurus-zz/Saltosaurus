class Comment < ActiveRecord::Base
  belongs_to :story

  validates_presence_of :story
  validates_presence_of :author
  validates_presence_of :contents

  attr_accessor :author, :contents, :story
end
