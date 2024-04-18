class CartedProductsController < ApplicationController
  def create 
    @carted_products = Carted_Products.create(
      user_id: params[params]
      product_id: params[params]
      quantity: params[params]
      order_id: params[nil]
      status: "carted"
    )
  end 
end
