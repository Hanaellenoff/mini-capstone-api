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
