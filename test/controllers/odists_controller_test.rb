require 'test_helper'

class OdistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @odist = odists(:one)
  end

  test "should get index" do
    get odists_url
    assert_response :success
  end

  test "should get new" do
    get new_odist_url
    assert_response :success
  end

  test "should create odist" do
    assert_difference('Odist.count') do
      post odists_url, params: { odist: { poetry: @odist.poetry } }
    end

    assert_redirected_to odist_url(Odist.last)
  end

  test "should show odist" do
    get odist_url(@odist)
    assert_response :success
  end

  test "should get edit" do
    get edit_odist_url(@odist)
    assert_response :success
  end

  test "should update odist" do
    patch odist_url(@odist), params: { odist: { poetry: @odist.poetry } }
    assert_redirected_to odist_url(@odist)
  end

  test "should destroy odist" do
    assert_difference('Odist.count', -1) do
      delete odist_url(@odist)
    end

    assert_redirected_to odists_url
  end
end
