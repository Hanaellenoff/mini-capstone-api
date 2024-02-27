class ProductsController < ApplicationController
  def one_product
    @product = Product.first
    render :show
  end 
  def all_products
    @products = Products.all
    render :index
  end 
end
