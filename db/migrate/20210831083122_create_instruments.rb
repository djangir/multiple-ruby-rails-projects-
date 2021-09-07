class CreateInstruments < ActiveRecord::Migration[6.1]
  def change
    create_table :instruments do |t|
      t.string :brand
      t.text :description
      t.string :condition
      t.string :finish
      t.string :title
      t.decimal :price, default: 0, precision: 5, scale: 2 
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
