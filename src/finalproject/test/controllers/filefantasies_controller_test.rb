require 'test_helper'

class FilefantasiesControllerTest < ActionController::TestCase
  setup do
    @filefantasy = filefantasies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filefantasies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filefantasy" do
    assert_difference('Filefantasy.count') do
      post :create, filefantasy: { name: @filefantasy.name }
    end

    assert_redirected_to filefantasy_path(assigns(:filefantasy))
  end

  test "should show filefantasy" do
    get :show, id: @filefantasy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filefantasy
    assert_response :success
  end

  test "should update filefantasy" do
    patch :update, id: @filefantasy, filefantasy: { name: @filefantasy.name }
    assert_redirected_to filefantasy_path(assigns(:filefantasy))
  end

  test "should destroy filefantasy" do
    assert_difference('Filefantasy.count', -1) do
      delete :destroy, id: @filefantasy
    end

    assert_redirected_to filefantasies_path
  end
end
