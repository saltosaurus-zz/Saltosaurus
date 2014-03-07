class User < ActiveRecord::Base
  has_many :stories
  has_many :collections

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :encrypted_password, presence: true, length: { minimum: 6, maximum: 16 }
end
