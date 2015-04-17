require 'test_helper'

class OdersControllerTest < ActionController::TestCase
  setup do
    @oder = oders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oder" do
    assert_difference('Oder.count') do
      post :create, oder: { address: @oder.address, email: @oder.email, name: @oder.name, pay_type: @oder.pay_type }
    end

    assert_redirected_to oder_path(assigns(:oder))
  end

  test "should show oder" do
    get :show, id: @oder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oder
    assert_response :success
  end

  test "should update oder" do
    patch :update, id: @oder, oder: { address: @oder.address, email: @oder.email, name: @oder.name, pay_type: @oder.pay_type }
    assert_redirected_to oder_path(assigns(:oder))
  end

  test "should destroy oder" do
    assert_difference('Oder.count', -1) do
      delete :destroy, id: @oder
    end

    assert_redirected_to oders_path
  end
end
