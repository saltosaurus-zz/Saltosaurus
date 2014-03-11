class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      # Used in all stories
      t.string :title
      t.belongs_to :user
      t.text :content
      t.datetime :published_on
      t.belongs_to :collection

      # Used in Chapters
      t.integer :number

      t.string :type
    end
  end
end
