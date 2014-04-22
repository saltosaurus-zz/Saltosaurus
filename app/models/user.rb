class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:twitter, :facebook]
  has_many :stories
  has_many :collections

  validates :display_name, presence: true
  validates :uid, presence: true, uniqueness: true
  validates :provider, presence: true

  # Authentication methods
  def self.find_for_twitter_oauth(auth)
    where(auth.slice(:provider,:uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.display_name = auth.info.name
    end
  end
end
