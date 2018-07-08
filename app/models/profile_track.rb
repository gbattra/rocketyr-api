class ProfileTrack < ApplicationRecord
  belongs_to :author_profile
  has_one :track
end
