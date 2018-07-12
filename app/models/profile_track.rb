class ProfileTrack < ApplicationRecord
  belongs_to :author_profile
  belongs_to :track
end
