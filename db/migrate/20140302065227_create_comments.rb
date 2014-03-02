class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :story
      t.string :contents
      t.string :author

      t.timestamps
    end
  end
end
