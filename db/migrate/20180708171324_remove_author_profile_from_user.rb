class RemoveAuthorProfileFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :author_profile_id
  end
end
