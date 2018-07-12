class FeedTrack < ApplicationRecord
  belongs_to :track
  belongs_to :feed
end
