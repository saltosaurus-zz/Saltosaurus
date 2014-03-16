class User < ActiveRecord::Base
  has_many :stories
  has_many :collections

  validates :display_name, presence: true
  validates :uid, presence: true, uniqueness: true
  validates :provider, presence: true
end
