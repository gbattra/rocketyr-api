class Feed < ApplicationRecord
  belongs_to :user
  belongs_to :icon
  has_many :liked_tracks
end
