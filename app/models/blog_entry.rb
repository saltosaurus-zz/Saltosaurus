class BlogEntry < Story
  validates :title, uniqueness: { scope: :type, message: 'already exists amongst all Blog Entries.' }
end
