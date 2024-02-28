class ProductsController < ApplicationController
  def one_product
    @product = Product.find_by(id: params[:id])
    render :show
  end 
  def index
    @products = Product.find_by(id: params[:id])
    render :index
  end 
end
