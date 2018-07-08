class Playlist < ApplicationRecord
  belongs_to :author, :class_name => 'User'
  has_many :playlist_tracks
end
