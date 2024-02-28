class ProductsController < ApplicationController
  def one_product
    @product = Product.find_by(id: params[:id])
    render :show
  end 
  def index
    @products = Product.all
    render :index
  end 
  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end 
  def create
    @product = Product.create(
    name: params["icecube"],
    price: params[2],
    image_url: params["http://google.com"],
    description: params["really cold"]
    )
    render :show
  end 
end
