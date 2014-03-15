class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :display_name

      t.string :uid
      t.string :provider
    end
  end
end
