class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.string :story
      t.string :author

      t.timestamps
    end
  end
end
