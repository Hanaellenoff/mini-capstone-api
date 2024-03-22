class OrdersController < ApplicationController
 
  def index
    @orders =  current_user.orders.all
    render :index
  end 

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render :show
  end 

  def create
    @order = Order.create(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      # subtotal: params["subtotal"],
      # tax: params["tax"],
      # total: params["total"]
    )
    if @order.save
      render :show
    else
      render json: { errors: @order.errors.full_messages },
      status: 22 
    end 
  end 
end
