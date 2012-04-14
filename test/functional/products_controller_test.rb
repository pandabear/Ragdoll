require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  
  context "Products" do

    test "should get index" do
      get :index
      assert_response :success
    end

  end

end