require 'test_helper'

class AmbitosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ambito = ambitos(:one)
  end

  test "should get index" do
    get ambitos_url
    assert_response :success
  end

  test "should get new" do
    get new_ambito_url
    assert_response :success
  end

  test "should create ambito" do
    assert_difference('Ambito.count') do
      post ambitos_url, params: { ambito: { name: @ambito.name } }
    end

    assert_redirected_to ambito_url(Ambito.last)
  end

  test "should show ambito" do
    get ambito_url(@ambito)
    assert_response :success
  end

  test "should get edit" do
    get edit_ambito_url(@ambito)
    assert_response :success
  end

  test "should update ambito" do
    patch ambito_url(@ambito), params: { ambito: { name: @ambito.name } }
    assert_redirected_to ambito_url(@ambito)
  end

  test "should destroy ambito" do
    assert_difference('Ambito.count', -1) do
      delete ambito_url(@ambito)
    end

    assert_redirected_to ambitos_url
  end
end
