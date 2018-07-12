class CreateFeedTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :feed_tracks do |t|
      t.integer :track_id
      t.integer :feed_id

      t.timestamps
    end
  end
end
