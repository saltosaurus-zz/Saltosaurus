class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.belongs_to :user
      t.text :content
      t.string :title
      t.datetime :published_on

      t.timestamps
    end
  end
end
