require "test_helper"

class CageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cage_index_url
    assert_response :success
  end

  test "should get show" do
    get cage_show_url
    assert_response :success
  end

  test "should get create" do
    get cage_create_url
    assert_response :success
  end

  test "should get update" do
    get cage_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cage_destroy_url
    assert_response :success
  end
end
