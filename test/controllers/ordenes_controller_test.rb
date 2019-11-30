require 'test_helper'

class OrdenesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordene = ordenes(:one)
  end

  test "should get index" do
    get ordenes_url
    assert_response :success
  end

  test "should get new" do
    get new_ordene_url
    assert_response :success
  end

  test "should create ordene" do
    assert_difference('Ordene.count') do
      post ordenes_url, params: { ordene: { celular: @ordene.celular, contacto: @ordene.contacto, contacto_id: @ordene.contacto_id, cuit: @ordene.cuit, direccion: @ordene.direccion, email: @ordene.email, estatus_id: @ordene.estatus_id, industria_id: @ordene.industria_id, localidad: @ordene.localidad, localidad_id: @ordene.localidad_id, prioridad: @ordene.prioridad, prioridad_id: @ordene.prioridad_id, telefono: @ordene.telefono, vencimiento: @ordene.vencimiento } }
    end

    assert_redirected_to ordene_url(Ordene.last)
  end

  test "should show ordene" do
    get ordene_url(@ordene)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordene_url(@ordene)
    assert_response :success
  end

  test "should update ordene" do
    patch ordene_url(@ordene), params: { ordene: { celular: @ordene.celular, contacto: @ordene.contacto, contacto_id: @ordene.contacto_id, cuit: @ordene.cuit, direccion: @ordene.direccion, email: @ordene.email, estatus_id: @ordene.estatus_id, industria_id: @ordene.industria_id, localidad: @ordene.localidad, localidad_id: @ordene.localidad_id, prioridad: @ordene.prioridad, prioridad_id: @ordene.prioridad_id, telefono: @ordene.telefono, vencimiento: @ordene.vencimiento } }
    assert_redirected_to ordene_url(@ordene)
  end

  test "should destroy ordene" do
    assert_difference('Ordene.count', -1) do
      delete ordene_url(@ordene)
    end

    assert_redirected_to ordenes_url
  end
end
