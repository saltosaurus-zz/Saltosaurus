class Update < Story
  validates :title, uniqueness: true
end
