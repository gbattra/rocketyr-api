class CreateBadges < ActiveRecord::Migration[5.2]
  def change
    create_table :badges do |t|
      t.string :name
      t.string :icon
      t.string :label
      t.string :value
      t.string :description

      t.timestamps
    end
  end
end
