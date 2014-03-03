class Chapter < Story
  validates :novel_id, :presence => true
  validates :number, :presence => true
  validates :title, :number, :uniqueness => {:scope => :novel_id}
  validates :content, :presence => true
end
