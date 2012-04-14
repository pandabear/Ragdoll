require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  context "Product instance" do

    setup do
      @product_one = Factory.build(:product)
      @product_two = Factory.build(:product)
    end

    should "not be nil" do
      assert @product_one
      assert @product_two
    end

  end

end
