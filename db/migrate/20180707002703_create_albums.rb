class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.integer :author_profile_id
      t.string :name
      t.string :album_art_url
      t.integer :genre_id
      t.string :color

      t.timestamps
    end
  end
end
