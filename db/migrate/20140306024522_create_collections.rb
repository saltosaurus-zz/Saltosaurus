class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :title
      t.belongs_to :user
      t.boolean :completed
      t.date :completed_on

      t.string :type
    end
  end
end
