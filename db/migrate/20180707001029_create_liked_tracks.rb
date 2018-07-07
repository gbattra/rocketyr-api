class CreateLikedTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :liked_tracks do |t|
      t.integer :feed_id
      t.integer :track_id

      t.timestamps
    end
  end
end
