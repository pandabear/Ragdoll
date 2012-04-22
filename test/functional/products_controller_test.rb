require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  
  context "Products page" do

    should "get index" do
      get :index
      assert_response :success
    end

  end

end