class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      # Used in all stories
      t.string :title
      t.string :author
      t.datetime :published_on

      # Used in Novels
      t.datetime :begun_on

      # Used in Short Stories
      t.text :content
    end
  end
end
