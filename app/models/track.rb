class Track < ApplicationRecord
  belongs_to :author_profile
  has_one :track_rank
end
