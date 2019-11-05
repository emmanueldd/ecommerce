class CreateOrderHasProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :order_has_products do |t|
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
  end
end
