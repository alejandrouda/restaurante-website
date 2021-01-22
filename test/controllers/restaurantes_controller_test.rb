require 'test_helper'

class RestaurantesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get restaurantes_index_url
    assert_response :success
  end

  test "should get show" do
    get restaurantes_show_url
    assert_response :success
  end

  test "should get edit" do
    get restaurantes_edit_url
    assert_response :success
  end

  test "should get update" do
    get restaurantes_update_url
    assert_response :success
  end

  test "should get new" do
    get restaurantes_new_url
    assert_response :success
  end

  test "should get create" do
    get restaurantes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get restaurantes_destroy_url
    assert_response :success
  end

end
