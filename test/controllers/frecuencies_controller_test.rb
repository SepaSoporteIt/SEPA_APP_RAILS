require 'test_helper'

class FrecuenciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frecuency = frecuencies(:one)
  end

  test "should get index" do
    get frecuencies_url
    assert_response :success
  end

  test "should get new" do
    get new_frecuency_url
    assert_response :success
  end

  test "should create frecuency" do
    assert_difference('Frecuency.count') do
      post frecuencies_url, params: { frecuency: { name: @frecuency.name } }
    end

    assert_redirected_to frecuency_url(Frecuency.last)
  end

  test "should show frecuency" do
    get frecuency_url(@frecuency)
    assert_response :success
  end

  test "should get edit" do
    get edit_frecuency_url(@frecuency)
    assert_response :success
  end

  test "should update frecuency" do
    patch frecuency_url(@frecuency), params: { frecuency: { name: @frecuency.name } }
    assert_redirected_to frecuency_url(@frecuency)
  end

  test "should destroy frecuency" do
    assert_difference('Frecuency.count', -1) do
      delete frecuency_url(@frecuency)
    end

    assert_redirected_to frecuencies_url
  end
end
