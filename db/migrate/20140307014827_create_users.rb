class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :display_name

      t.string :uid
      t.string :provider

      t.boolean :admin, :default => false

      ## Database authenticatable
      t.string :email,              null: false, default: "abc@abc.abc"
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
