require 'test_helper'

class CategriesControllerTest < ActionController::TestCase
  setup do
    @categry = categries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categry" do
    assert_difference('Categry.count') do
      post :create, categry: { descrpcion: @categry.descrpcion, name: @categry.name, price: @categry.price }
    end

    assert_redirected_to categry_path(assigns(:categry))
  end

  test "should show categry" do
    get :show, id: @categry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categry
    assert_response :success
  end

  test "should update categry" do
    patch :update, id: @categry, categry: { descrpcion: @categry.descrpcion, name: @categry.name, price: @categry.price }
    assert_redirected_to categry_path(assigns(:categry))
  end

  test "should destroy categry" do
    assert_difference('Categry.count', -1) do
      delete :destroy, id: @categry
    end

    assert_redirected_to categries_path
  end
end
