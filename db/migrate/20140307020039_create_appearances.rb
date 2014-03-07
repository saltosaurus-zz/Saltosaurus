class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances, id: false do |t|
      t.integer :anthology_id
      t.integer :short_story_id
    end
  end
end
