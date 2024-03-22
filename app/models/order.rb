class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  def tax
    tax = price * 0.09
  end 
  def total
    return tax + price
  end 
end
