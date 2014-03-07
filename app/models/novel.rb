class Novel < Collection
  has_many :chapters, foreign_key: :collection_id
end
