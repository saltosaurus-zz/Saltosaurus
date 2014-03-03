class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :author
      t.text :content
      t.string :title
      t.datetime :published_on

      t.timestamps
    end
  end
end
