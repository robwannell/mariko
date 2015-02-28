require 'test_helper'

class EndorsementsControllerTest < ActionController::TestCase
  setup do
    @endorsement = endorsements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:endorsements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create endorsement" do
    assert_difference('Endorsement.count') do
      post :create, endorsement: { name: @endorsement.name }
    end

    assert_redirected_to endorsement_path(assigns(:endorsement))
  end

  test "should show endorsement" do
    get :show, id: @endorsement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @endorsement
    assert_response :success
  end

  test "should update endorsement" do
    patch :update, id: @endorsement, endorsement: { name: @endorsement.name }
    assert_redirected_to endorsement_path(assigns(:endorsement))
  end

  test "should destroy endorsement" do
    assert_difference('Endorsement.count', -1) do
      delete :destroy, id: @endorsement
    end

    assert_redirected_to endorsements_path
  end
end
