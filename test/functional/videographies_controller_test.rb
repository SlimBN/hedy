require 'test_helper'

class VideographiesControllerTest < ActionController::TestCase
  setup do
    @videography = videographies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:videographies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create videography" do
    assert_difference('Videography.count') do
      post :create, videography: { ayna: @videography.ayna, code: @videography.code, description: @videography.description, embed: @videography.embed, title: @videography.title, wa9tesh: @videography.wa9tesh }
    end

    assert_redirected_to videography_path(assigns(:videography))
  end

  test "should show videography" do
    get :show, id: @videography
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @videography
    assert_response :success
  end

  test "should update videography" do
    put :update, id: @videography, videography: { ayna: @videography.ayna, code: @videography.code, description: @videography.description, embed: @videography.embed, title: @videography.title, wa9tesh: @videography.wa9tesh }
    assert_redirected_to videography_path(assigns(:videography))
  end

  test "should destroy videography" do
    assert_difference('Videography.count', -1) do
      delete :destroy, id: @videography
    end

    assert_redirected_to videographies_path
  end
end
