class Album < ApplicationRecord
  belongs_to :author_profile
  belongs_to :genre
end
