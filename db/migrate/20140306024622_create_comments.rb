class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :commentable, polymorphic: true
      t.text :content
      t.belongs_to :user

      t.timestamps
    end
  end
end
