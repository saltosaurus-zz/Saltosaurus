class CreateShortStories < ActiveRecord::Migration
  def change
    create_table :short_stories do |t|

      t.timestamps
    end
  end
end
