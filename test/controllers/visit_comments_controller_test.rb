require 'test_helper'

class VisitCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visit_comment = visit_comments(:one)
  end

  test "should get index" do
    get visit_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_visit_comment_url
    assert_response :success
  end

  test "should create visit_comment" do
    assert_difference('VisitComment.count') do
      post visit_comments_url, params: { visit_comment: { note: @visit_comment.note, visit_id: @visit_comment.visit_id } }
    end

    assert_redirected_to visit_comment_url(VisitComment.last)
  end

  test "should show visit_comment" do
    get visit_comment_url(@visit_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_visit_comment_url(@visit_comment)
    assert_response :success
  end

  test "should update visit_comment" do
    patch visit_comment_url(@visit_comment), params: { visit_comment: { note: @visit_comment.note, visit_id: @visit_comment.visit_id } }
    assert_redirected_to visit_comment_url(@visit_comment)
  end

  test "should destroy visit_comment" do
    assert_difference('VisitComment.count', -1) do
      delete visit_comment_url(@visit_comment)
    end

    assert_redirected_to visit_comments_url
  end
end
