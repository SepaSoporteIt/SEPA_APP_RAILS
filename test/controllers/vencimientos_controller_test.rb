require 'test_helper'

class VencimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vencimiento = vencimientos(:one)
  end

  test "should get index" do
    get vencimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_vencimiento_url
    assert_response :success
  end

  test "should create vencimiento" do
    assert_difference('Vencimiento.count') do
      post vencimientos_url, params: { vencimiento: { company_id: @vencimiento.company_id, date: @vencimiento.date, date: @vencimiento.date, employee_id: @vencimiento.employee_id, string: @vencimiento.string, study_id: @vencimiento.study_id, text: @vencimiento.text } }
    end

    assert_redirected_to vencimiento_url(Vencimiento.last)
  end

  test "should show vencimiento" do
    get vencimiento_url(@vencimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_vencimiento_url(@vencimiento)
    assert_response :success
  end

  test "should update vencimiento" do
    patch vencimiento_url(@vencimiento), params: { vencimiento: { company_id: @vencimiento.company_id, date: @vencimiento.date, date: @vencimiento.date, employee_id: @vencimiento.employee_id, string: @vencimiento.string, study_id: @vencimiento.study_id, text: @vencimiento.text } }
    assert_redirected_to vencimiento_url(@vencimiento)
  end

  test "should destroy vencimiento" do
    assert_difference('Vencimiento.count', -1) do
      delete vencimiento_url(@vencimiento)
    end

    assert_redirected_to vencimientos_url
  end
end
