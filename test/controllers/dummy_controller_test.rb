require 'test_helper'

class DummyControllerTest < ActionController::TestCase
  test "should get c" do
    get :c
    assert_response :success
  end

  test "should get r" do
    get :r
    assert_response :success
  end

  test "should get u" do
    get :u
    assert_response :success
  end

  test "should get d" do
    get :d
    assert_response :success
  end

  test "should get all" do
    get :all
    assert_response :success
  end

end
