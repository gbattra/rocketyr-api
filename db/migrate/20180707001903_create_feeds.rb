class CreateFeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :feeds do |t|
      t.integer :user_id
      t.string :name
      t.integer :icon_id
      t.string :color

      t.timestamps
    end
  end
end
