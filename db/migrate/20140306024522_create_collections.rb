class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :title
      t.string :author
      t.datetime :begun_on
      t.datetime :completed_on
    end
  end
end