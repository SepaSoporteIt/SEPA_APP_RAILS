require 'test_helper'

class LocalidadPartidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @localidad_partido = localidad_partidos(:one)
  end

  test "should get index" do
    get localidad_partidos_url
    assert_response :success
  end

  test "should get new" do
    get new_localidad_partido_url
    assert_response :success
  end

  test "should create localidad_partido" do
    assert_difference('LocalidadPartido.count') do
      post localidad_partidos_url, params: { localidad_partido: { content: @localidad_partido.content, title: @localidad_partido.title } }
    end

    assert_redirected_to localidad_partido_url(LocalidadPartido.last)
  end

  test "should show localidad_partido" do
    get localidad_partido_url(@localidad_partido)
    assert_response :success
  end

  test "should get edit" do
    get edit_localidad_partido_url(@localidad_partido)
    assert_response :success
  end

  test "should update localidad_partido" do
    patch localidad_partido_url(@localidad_partido), params: { localidad_partido: { content: @localidad_partido.content, title: @localidad_partido.title } }
    assert_redirected_to localidad_partido_url(@localidad_partido)
  end

  test "should destroy localidad_partido" do
    assert_difference('LocalidadPartido.count', -1) do
      delete localidad_partido_url(@localidad_partido)
    end

    assert_redirected_to localidad_partidos_url
  end
end
