class Novel < ActiveRecord::Base
  has_many :chapters

  validates_presence_of :begun_on

  attr_reader :begun_on

end
