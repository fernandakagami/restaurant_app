require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  	
  	def setup
    	@product = Product.new(name: "salada")
  	end

  	test "should be valid" do
    	assert @product.valid?
  	end

  	test "name should be present" do
    	@product.name = ""
    	assert_not @product.valid?
  	end
end
