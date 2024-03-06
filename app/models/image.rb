class Image < ApplicationRecord
  # def products
  #   Product.where(Image.product_id)
  # end 
  belongs_to :product 
end
