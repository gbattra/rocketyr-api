class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :author_id
      t.integer :runtime
      t.string :track_art_url

      t.timestamps
    end
  end
end
