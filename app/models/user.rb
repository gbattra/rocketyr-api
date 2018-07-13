class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_one :author_profile
  has_many :playlists
  has_many :tracks, :through => :author_profile
  has_many :albums, :through => :author_profile
  has_many :feeds

  before_save -> { skip_confirmation! }

  
end
