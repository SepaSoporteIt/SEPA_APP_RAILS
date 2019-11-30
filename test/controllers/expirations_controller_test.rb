require 'test_helper'

class ExpirationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expiration = expirations(:one)
  end

  test "should get index" do
    get expirations_url
    assert_response :success
  end

  test "should get new" do
    get new_expiration_url
    assert_response :success
  end

  test "should create expiration" do
    assert_difference('Expiration.count') do
      post expirations_url, params: { expiration: { comments: @expiration.comments, employee: @expiration.employee, end_date: @expiration.end_date, industry: @expiration.industry, start_date: @expiration.start_date, status: @expiration.status, study: @expiration.study } }
    end

    assert_redirected_to expiration_url(Expiration.last)
  end

  test "should show expiration" do
    get expiration_url(@expiration)
    assert_response :success
  end

  test "should get edit" do
    get edit_expiration_url(@expiration)
    assert_response :success
  end

  test "should update expiration" do
    patch expiration_url(@expiration), params: { expiration: { comments: @expiration.comments, employee: @expiration.employee, end_date: @expiration.end_date, industry: @expiration.industry, start_date: @expiration.start_date, status: @expiration.status, study: @expiration.study } }
    assert_redirected_to expiration_url(@expiration)
  end

  test "should destroy expiration" do
    assert_difference('Expiration.count', -1) do
      delete expiration_url(@expiration)
    end

    assert_redirected_to expirations_url
  end
end
