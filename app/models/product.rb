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
  # validates :price, :presence => true
  # validates :name, :presence => true
  # validates :price, numericality: { only_integer: true }
  # validates :image_url, :presence => true 
  # validates :description, length: {minimum: 20} 

  
  # def supplier
  #   Supplier.find_by(id: supplier_id) 
  # end 
  belongs_to :supplier
  has_many :images
  has_many :orders
  # def images 
  #  images = Image.where(product_id: id)
  #   belongs_to :product
  # end 

end

# allow users to purchase products

# we need to give products a product id
#create a new column migration to add it make sure its a number 

# we need to create an order 
# inputting product_id, price, etc.

# connect product table to orders table 

# make something that will take the product away once ordered 
# 