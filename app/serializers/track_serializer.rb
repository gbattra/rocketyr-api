class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :runtime, :track_art_url
end
