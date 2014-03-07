class Novel < Collection
  has_many :chapters, foreign_key: :collection_id
  belongs_to :author, class_name: 'User', foreign_key: :user_id
end
