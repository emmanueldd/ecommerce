json.extract! product, :id, :name, :description, :price, :quantity, :merchant_id, :created_at, :updated_at
json.url product_url(product, format: :json)
