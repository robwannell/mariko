require 'test_helper'

class MediaPicsControllerTest < ActionController::TestCase
  setup do
    @media_pic = media_pics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_pics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_pic" do
    assert_difference('MediaPic.count') do
      post :create, media_pic: { image: @media_pic.image, order: @media_pic.order, title: @media_pic.title }
    end

    assert_redirected_to media_pic_path(assigns(:media_pic))
  end

  test "should show media_pic" do
    get :show, id: @media_pic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @media_pic
    assert_response :success
  end

  test "should update media_pic" do
    patch :update, id: @media_pic, media_pic: { image: @media_pic.image, order: @media_pic.order, title: @media_pic.title }
    assert_redirected_to media_pic_path(assigns(:media_pic))
  end

  test "should destroy media_pic" do
    assert_difference('MediaPic.count', -1) do
      delete :destroy, id: @media_pic
    end

    assert_redirected_to media_pics_path
  end
end
