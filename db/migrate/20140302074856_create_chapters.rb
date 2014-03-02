class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.integer :number
      t.string :name
      t.text :contents

      t.timestamps
    end
  end
end
