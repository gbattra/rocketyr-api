class AddOptionsToFeedFilters < ActiveRecord::Migration[5.2]
  def change
    add_column :feed_filters, :options, :string
  end
end
