class Appearance < ActiveRecord::Base
  belongs_to :anthology, foreign_key: :collection_id
  belongs_to :short_story, foreign_key: :story_id
end
