class CreateNovels < ActiveRecord::Migration
  def change
    create_table :novels do |t|
      t.datetime :begun_on
      t.datetime :completed_on

      t.timestamps
    end
  end
end
