class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :commentable, polymorphic: true
      t.string :content
      t.string :author

      t.timestamps
    end
  end
end
