class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :birthday
      t.integer :location_id
      t.string :profile_image_url
      t.integer :author_profile_id

      t.timestamps
    end
  end
end
