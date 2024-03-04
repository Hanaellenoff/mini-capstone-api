class Product < ApplicationRecord
  def is_discounted?
    price <= 10 
   end   
   def tax
    tax = price * 0.09
   end 
   def total
     return tax + price
   end 
  validates :price, :presence => true
  validates :name, :presence => true
  validates :price, numericality: { only_integer: true }
  validates :image_url, :presence => true 
end
