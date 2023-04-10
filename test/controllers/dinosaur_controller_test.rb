require "test_helper"

class DinosaurControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dinosaur_index_url
    assert_response :success
  end

  test "should get show" do
    get dinosaur_show_url
    assert_response :success
  end

  test "should get create" do
    get dinosaur_create_url
    assert_response :success
  end

  test "should get update" do
    get dinosaur_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dinosaur_destroy_url
    assert_response :success
  end
end
