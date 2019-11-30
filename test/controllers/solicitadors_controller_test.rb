require 'test_helper'

class SolicitadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitador = solicitadors(:one)
  end

  test "should get index" do
    get solicitadors_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitador_url
    assert_response :success
  end

  test "should create solicitador" do
    assert_difference('Solicitador.count') do
      post solicitadors_url, params: { solicitador: { name: @solicitador.name } }
    end

    assert_redirected_to solicitador_url(Solicitador.last)
  end

  test "should show solicitador" do
    get solicitador_url(@solicitador)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitador_url(@solicitador)
    assert_response :success
  end

  test "should update solicitador" do
    patch solicitador_url(@solicitador), params: { solicitador: { name: @solicitador.name } }
    assert_redirected_to solicitador_url(@solicitador)
  end

  test "should destroy solicitador" do
    assert_difference('Solicitador.count', -1) do
      delete solicitador_url(@solicitador)
    end

    assert_redirected_to solicitadors_url
  end
end
