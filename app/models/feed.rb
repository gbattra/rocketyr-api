class Feed < ApplicationRecord
  belongs_to :user
  has_one :icon
  has_many :liked_tracks
end
