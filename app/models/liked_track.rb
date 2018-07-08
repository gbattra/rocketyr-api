class LikedTrack < ApplicationRecord
  belongs_to :feed
  belongs_to :track
end
