class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table   :line_items do |t|
      t.integer    :quantity , default: 1
      t.references :product, null: false, foreign_key: true
      t.belongs_to :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
