class Novel < Story
  has_many :chapters

  validates_presence_of :begun_on
end
