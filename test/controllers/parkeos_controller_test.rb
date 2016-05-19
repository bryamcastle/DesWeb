require 'test_helper'

class ParkeosControllerTest < ActionController::TestCase
  setup do
    @parkeo = parkeos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parkeos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parkeo" do
    assert_difference('Parkeo.count') do
      post :create, parkeo: { codigo: @parkeo.codigo, description: @parkeo.description }
    end

    assert_redirected_to parkeo_path(assigns(:parkeo))
  end

  test "should show parkeo" do
    get :show, id: @parkeo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parkeo
    assert_response :success
  end

  test "should update parkeo" do
    patch :update, id: @parkeo, parkeo: { codigo: @parkeo.codigo, description: @parkeo.description }
    assert_redirected_to parkeo_path(assigns(:parkeo))
  end

  test "should destroy parkeo" do
    assert_difference('Parkeo.count', -1) do
      delete :destroy, id: @parkeo
    end

    assert_redirected_to parkeos_path
  end
end
