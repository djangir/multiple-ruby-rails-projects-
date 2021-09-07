class CreateTweats < ActiveRecord::Migration[6.1]
  def change
    create_table :tweats do |t|
      t.string :title
      t.text :tweet
      t.integer :user_id

      t.timestamps
    end
  end
end
 