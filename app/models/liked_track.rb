class LikedTrack < ApplicationRecord
  belongs_to :feed
  has_one :track
end
