class CreateShots < ActiveRecord::Migration[6.1]
  def change
    create_table :shots do |t|
      t.string :user_shot
      t.string :title
      t.text :discription
      t.integer :user_id

      t.timestamps
    end
  end
end
