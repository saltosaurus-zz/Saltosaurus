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

      # Used in Chapters
      t.belongs_to :novel
      t.integer :number
      t.text :content

      t.string :type
    end
  end
end
