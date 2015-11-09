require 'test_helper'

class PunishesControllerTest < ActionController::TestCase
  setup do
    @punish = punishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:punishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create punish" do
    assert_difference('Punish.count') do
      post :create, punish: { complete_data: @punish.complete_data, fault_data: @punish.fault_data, faults: @punish.faults, name: @punish.name, status: @punish.status }
    end

    assert_redirected_to punish_path(assigns(:punish))
  end

  test "should show punish" do
    get :show, id: @punish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @punish
    assert_response :success
  end

  test "should update punish" do
    patch :update, id: @punish, punish: { complete_data: @punish.complete_data, fault_data: @punish.fault_data, faults: @punish.faults, name: @punish.name, status: @punish.status }
    assert_redirected_to punish_path(assigns(:punish))
  end

  test "should destroy punish" do
    assert_difference('Punish.count', -1) do
      delete :destroy, id: @punish
    end

    assert_redirected_to punishes_path
  end
end
