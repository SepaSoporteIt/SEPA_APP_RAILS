require 'test_helper'

class IndustryTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @industry_type = industry_types(:one)
  end

  test "should get index" do
    get industry_types_url
    assert_response :success
  end

  test "should get new" do
    get new_industry_type_url
    assert_response :success
  end

  test "should create industry_type" do
    assert_difference('IndustryType.count') do
      post industry_types_url, params: { industry_type: { name: @industry_type.name } }
    end

    assert_redirected_to industry_type_url(IndustryType.last)
  end

  test "should show industry_type" do
    get industry_type_url(@industry_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_industry_type_url(@industry_type)
    assert_response :success
  end

  test "should update industry_type" do
    patch industry_type_url(@industry_type), params: { industry_type: { name: @industry_type.name } }
    assert_redirected_to industry_type_url(@industry_type)
  end

  test "should destroy industry_type" do
    assert_difference('IndustryType.count', -1) do
      delete industry_type_url(@industry_type)
    end

    assert_redirected_to industry_types_url
  end
end
