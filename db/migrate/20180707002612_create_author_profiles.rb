class CreateAuthorProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :author_profiles do |t|
      t.integer :user_id
      t.string :bio

      t.timestamps
    end
  end
end
