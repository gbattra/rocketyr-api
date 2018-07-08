class Track < ApplicationRecord
  belongs_to :author_profile
  belongs_to :track_rank
end
