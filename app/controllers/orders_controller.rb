class OrdersController < ApplicationController
  before_action :set_order

  def edit
  end

  def update
    @order.paid = true
    if @order.save
      redirect_to root_path, notice: 'Votre panier a bien été payé'
    end
  end

  private

    def set_order
      @order = current_user.orders.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:token)
    end

end
