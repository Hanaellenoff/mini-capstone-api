require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def is_discounted?
   if product.price <= 10 
      puts true
   else
      puts false
   end 
  end   
  def tax
    

end
