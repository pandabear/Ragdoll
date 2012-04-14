require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  context "Category instance" do

    setup do
      @category = Factory.build(:category)
    end
    
    should "not be nil" do
      assert !@category.nil?
    end

  end

end
