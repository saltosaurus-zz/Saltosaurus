class CreateShortStories < ActiveRecord::Migration
  def change
    create_table :short_stories do |t|
      t.text :contents
      t.datetime :published_on

      t.timestamps
    end
  end
end
