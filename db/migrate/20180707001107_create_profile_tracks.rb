class CreateProfileTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_tracks do |t|
      t.integer :track_id
      t.integer :author_profile_id

      t.timestamps
    end
  end
end
