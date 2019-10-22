class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :quantity, default: 1
      t.references :merchant, foreign_key: true

      t.timestamps
    end
  end
end
