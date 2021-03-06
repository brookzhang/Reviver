require 'test_helper'

class Order::PartOrderItemControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get add" do
    get :add
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get save" do
    get :save
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
