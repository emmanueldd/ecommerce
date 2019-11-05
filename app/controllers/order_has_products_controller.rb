class OrderHasProductsController < ApplicationController

  def create
    set_order
    @order_has_product = OrderHasProduct.new(order_has_product_params)
    @order_has_product.order = @order
    @order_has_product.price = @order_has_product.product.price
    if @order_has_product.save
      redirect_to root_path, notice: 'le produit a bien été ajouté à votre panier.'
    end
  end

  def set_order
    @order = current_user.active_order
    # @order ||= current_user.orders.new()
    if @order.blank?
      @order = current_user.orders.new()
    end
  end

  private
    def order_has_product_params
      params.require(:order_has_product).permit(:product_id)
    end
end
