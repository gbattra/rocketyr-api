class CreateTrackRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :track_ranks do |t|
      t.string :label
      t.string :icon
      t.integer :threshold

      t.timestamps
    end
  end
end
