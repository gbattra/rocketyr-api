class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :author_profile_id
      t.integer :runtime
      t.integer :share_count
      t.string :track_art_url
      t.integer :track_rank_id

      t.timestamps
    end
  end
end
