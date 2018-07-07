class CreateFeedFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :feed_filters do |t|
      t.string :key
      t.string :label
      t.integer :value

      t.timestamps
    end
  end
end
