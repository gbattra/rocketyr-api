class PlaylistTrack < ApplicationRecord
  belongs_to :playlist
  has_one :track
end
