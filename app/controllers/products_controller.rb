class ProductsController < ApplicationController
  def one_product
    @product = Product.first
    render :show
  end 
  def all_products
    @product = Product.all
    render :index
  end 
end
