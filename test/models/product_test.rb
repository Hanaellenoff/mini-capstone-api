require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def is_discounted?
   price <= 10 
  end   
  def tax
   tax = price * 0.09
  end 
  def total
    return tax + price
  end 
end
