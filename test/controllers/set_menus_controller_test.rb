require 'test_helper'

class SetMenusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get set_menus_index_url
    assert_response :success
  end

  test "should get show" do
    get set_menus_show_url
    assert_response :success
  end

  test "should get edit" do
    get set_menus_edit_url
    assert_response :success
  end

  test "should get update" do
    get set_menus_update_url
    assert_response :success
  end

  test "should get new" do
    get set_menus_new_url
    assert_response :success
  end

  test "should get create" do
    get set_menus_create_url
    assert_response :success
  end

  test "should get destroy" do
    get set_menus_destroy_url
    assert_response :success
  end

end
