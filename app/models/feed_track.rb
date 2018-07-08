class FeedTrack < ApplicationRecord
  has_one :track
  belongs_to :feed
end
