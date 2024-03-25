class OrdersController < ApplicationController
 
  def index
    if current_user 
      @orders =  current_user.orders
      render :index
    else
      render json: [], status: :unauthorized
    end 
  end 

  def show
    if current_user
      @order = current_user.orders.find_by(id: params[:id])
      render :show
    else
      redner json: [], staus: :unauthorized
    end 
  end 

  def create
    if current_user
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
    else
      render json: [], status: :unauthorized
    end  
  end 
  # in process
  def update
    @order = Order.update(
      product_id: 
    )
  end 
end
