require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  
  should "get index" do
    get :index
    assert_response :success
  end

end