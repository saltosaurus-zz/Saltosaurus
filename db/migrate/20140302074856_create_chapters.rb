class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.belongs_to :novel
      t.integer :number
      t.string :title
      t.text :content
      t.datetime :published_on

      t.timestamps
    end
  end
end
