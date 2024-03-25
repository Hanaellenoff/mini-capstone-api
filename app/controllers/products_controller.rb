class ProductsController < ApplicationController
  before_action :authenticate_admin
  def one_product
    @product = Product.find_by(id: params[:id])
    render :show
  end 
  def index
    pp current_user
    @products = Product.all
    render :index
  end 
  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end 
  def create
    @product = Product.create(
    name: params["name"],
    price: params["price"],
    description: params["description"],
    supplier_id: params["supplier_id"]
    )
    if @product.valid? 
      render :show #happy path
    else 
      render json: {errors: @product.errors.full_messages},  
      status: 422  #sad path
    end 
  end 
  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
    name: params["name"] || @product.name,
    price: params["price"] || @product.price,
    description: params["description"] || @product.description
    )
    if @product.valid? 
      render :show #happy path
    else 
      render json: {errors: @product.errors.full_messages},  
      status: 422  #sad path
    end 
  end 
  def destroy 
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: "succesfully destroyed"
  end 
end
