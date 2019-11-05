class Order < ApplicationRecord
  belongs_to :user
  has_many :order_has_products
  has_many :products, through: :order_has_products
end
