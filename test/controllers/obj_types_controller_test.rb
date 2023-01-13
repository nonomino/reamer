require "test_helper"

class ObjTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obj_type = obj_types(:one)
  end

  test "should get index" do
    get obj_types_url
    assert_response :success
  end

  test "should get new" do
    get new_obj_type_url
    assert_response :success
  end

  test "should create obj_type" do
    assert_difference("ObjType.count") do
      post obj_types_url, params: { obj_type: { max_length: @obj_type.max_length, type: @obj_type.type } }
    end

    assert_redirected_to obj_type_url(ObjType.last)
  end

  test "should show obj_type" do
    get obj_type_url(@obj_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_obj_type_url(@obj_type)
    assert_response :success
  end

  test "should update obj_type" do
    patch obj_type_url(@obj_type), params: { obj_type: { max_length: @obj_type.max_length, type: @obj_type.type } }
    assert_redirected_to obj_type_url(@obj_type)
  end

  test "should destroy obj_type" do
    assert_difference("ObjType.count", -1) do
      delete obj_type_url(@obj_type)
    end

    assert_redirected_to obj_types_url
  end
end
