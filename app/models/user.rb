class User < ApplicationRecord
  has_one :author_profile
  has_many :playlists
  has_many :tracks, :through => :author_profile
  has_many :albums, :through => :author_profile
  has_many :feeds
end
