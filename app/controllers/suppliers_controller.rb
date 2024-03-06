class SuppliersController < ApplicationController
  def one_supplier
    @supplier = Supplier.find_by(id: params[:id])
    render :show
  end 
  def index
    @suppliers = Supplier.all
    render :index
  end 
  def show
    @supplier = Supplier.find_by(id: params[:id])
    render :show
  end 
  def create
    @supplier = Supplier.create(
    name: params["name"],
    email: params["email"],
    phone_number: params["phone_number"]
    )
    if @supplier.valid? 
      render :show #happy path
    else 
      render json: {errors: @supplier.errors.full_messages},  
      status: 422  #sad path
    end 
  end 
  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.update(
    name: params["name"] || @supplier.name,
    email: params["email"] || @supplier.email,
    phone_number: params["phone_number"] || @supplier.phone_number
    )
    if @supplier.valid? 
      render :show #happy path
    else 
      render json: {errors: @supplier.errors.full_messages},  
      status: 422  #sad path
    end 
  end 
  def destroy 
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy
    render json: "succesfully destroyed"
  end 
end


