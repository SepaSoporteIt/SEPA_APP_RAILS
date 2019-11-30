require 'test_helper'

class LegislacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legislacion = legislacions(:one)
  end

  test "should get index" do
    get legislacions_url
    assert_response :success
  end

  test "should get new" do
    get new_legislacion_url
    assert_response :success
  end

  test "should create legislacion" do
    assert_difference('Legislacion.count') do
      post legislacions_url, params: { legislacion: { name: @legislacion.name } }
    end

    assert_redirected_to legislacion_url(Legislacion.last)
  end

  test "should show legislacion" do
    get legislacion_url(@legislacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_legislacion_url(@legislacion)
    assert_response :success
  end

  test "should update legislacion" do
    patch legislacion_url(@legislacion), params: { legislacion: { name: @legislacion.name } }
    assert_redirected_to legislacion_url(@legislacion)
  end

  test "should destroy legislacion" do
    assert_difference('Legislacion.count', -1) do
      delete legislacion_url(@legislacion)
    end

    assert_redirected_to legislacions_url
  end
end
