class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :label
      t.integer :icon_id

      t.timestamps
    end
  end
end
