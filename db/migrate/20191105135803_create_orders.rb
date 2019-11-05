class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.integer :amount
      t.boolean :paid, default: false
      t.string :stripe_payment_intent_id
      t.string :stripe_customer_id
      t.datetime :paid_at

      t.timestamps
    end
  end
end
