require 'test_helper'

class FiledownloadsControllerTest < ActionController::TestCase
  setup do
    @filedownload = filedownloads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filedownloads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filedownload" do
    assert_difference('Filedownload.count') do
      post :create, filedownload: { fileupload_id: @filedownload.fileupload_id, user_id: @filedownload.user_id }
    end

    assert_redirected_to filedownload_path(assigns(:filedownload))
  end

  test "should show filedownload" do
    get :show, id: @filedownload
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filedownload
    assert_response :success
  end

  test "should update filedownload" do
    patch :update, id: @filedownload, filedownload: { fileupload_id: @filedownload.fileupload_id, user_id: @filedownload.user_id }
    assert_redirected_to filedownload_path(assigns(:filedownload))
  end

  test "should destroy filedownload" do
    assert_difference('Filedownload.count', -1) do
      delete :destroy, id: @filedownload
    end

    assert_redirected_to filedownloads_path
  end
end
