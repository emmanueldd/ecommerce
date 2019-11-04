class Category < ApplicationRecord
  has_many :products
end
Category.find_by(params[:id]) # google.copm?id=1

Category.find(params[:id]).products.where('quantity ? <', 1)
