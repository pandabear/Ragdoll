require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  
  context "Category listing page with existing categories" do
    setup do
      (1..10).each do
        Factory.create(:category)
      end
      @categories = Category.all
      get :index
    end

    should respond_with(:success)
    should assign_to(:categories).with { @categories }
  end

  context "Category listing page with no categories" do
    setup do
      @categories = Category.all
      get :index
    end

    should respond_with(:success)
    should assign_to(:categories).with { @categories }
  end

  context "Fetching a new category creation page" do
    setup do
      @category = Category.new
      @new_category = Factory.build(:category)
      get :new
    end

    should respond_with :success
    should assign_to(:category).with(@category)
  end

  context "Creating a new category with valid parameters" do
    setup do
      @new_category = Factory.build(:category)
      post :create, category: { name: @new_category[:name] }
    end

    should respond_with :redirect
    should set_the_flash

    should "create a new category" do
      assert assigns(:category).persisted?
      assert_redirected_to category_path(assigns(:category))
    end
  end
end