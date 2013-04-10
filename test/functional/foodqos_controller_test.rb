require 'test_helper'

class FoodqosControllerTest < ActionController::TestCase
  setup do
    @foodqo = foodqos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foodqos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foodqo" do
    assert_difference('Foodqo.count') do
      post :create, :foodqo => { :name => @foodqo.name, :rank => @foodqo.rank, :tast => @foodqo.tast }
    end

    assert_redirected_to foodqo_path(assigns(:foodqo))
  end

  test "should show foodqo" do
    get :show, :id => @foodqo
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @foodqo
    assert_response :success
  end

  test "should update foodqo" do
    put :update, :id => @foodqo, :foodqo => { :name => @foodqo.name, :rank => @foodqo.rank, :tast => @foodqo.tast }
    assert_redirected_to foodqo_path(assigns(:foodqo))
  end

  test "should destroy foodqo" do
    assert_difference('Foodqo.count', -1) do
      delete :destroy, :id => @foodqo
    end

    assert_redirected_to foodqos_path
  end
end
