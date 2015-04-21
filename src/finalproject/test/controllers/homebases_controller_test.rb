require 'test_helper'

class HomebasesControllerTest < ActionController::TestCase
  setup do
    @homebasis = homebases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homebases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homebasis" do
    assert_difference('Homebase.count') do
      post :create, homebasis: { name: @homebasis.name }
    end

    assert_redirected_to homebasis_path(assigns(:homebasis))
  end

  test "should show homebasis" do
    get :show, id: @homebasis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homebasis
    assert_response :success
  end

  test "should update homebasis" do
    patch :update, id: @homebasis, homebasis: { name: @homebasis.name }
    assert_redirected_to homebasis_path(assigns(:homebasis))
  end

  test "should destroy homebasis" do
    assert_difference('Homebase.count', -1) do
      delete :destroy, id: @homebasis
    end

    assert_redirected_to homebases_path
  end
end
