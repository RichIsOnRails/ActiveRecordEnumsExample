class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def edit
    @order = Order.find(params[:id])
    @statuses = Order.statuses
  end

  def update
    @order = Order.find(params[:id])
    @statuses = Order.statuses
    if @order.update_attributes(order_params)
      redirect_to orders_path, notice: "The order has been created."
    else
      render "edit"
    end
  end

private
  def order_params
    params.require(:order).permit(:subtotal, :tax, :shipping, :total, :status)
  end
end
