class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances do |t|
      t.belongs_to :collection
      t.belongs_to :story
    end
  end
end
