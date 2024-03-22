class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  def subtotal
    return product.price
  end 
  def tax
    tax = product.price * 0.09
  end 
  def total
    return tax + product.price
  end 
end
