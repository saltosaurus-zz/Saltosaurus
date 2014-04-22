class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :stories
  has_many :collections

  validates :display_name, presence: true
  validates :uid, presence: true, uniqueness: true
  validates :provider, presence: true
end
