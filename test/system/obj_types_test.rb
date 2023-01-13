require "application_system_test_case"

class ObjTypesTest < ApplicationSystemTestCase
  setup do
    @obj_type = obj_types(:one)
  end

  test "visiting the index" do
    visit obj_types_url
    assert_selector "h1", text: "Obj types"
  end

  test "should create obj type" do
    visit obj_types_url
    click_on "New obj type"

    fill_in "Max length", with: @obj_type.max_length
    fill_in "Type", with: @obj_type.type
    click_on "Create Obj type"

    assert_text "Obj type was successfully created"
    click_on "Back"
  end

  test "should update Obj type" do
    visit obj_type_url(@obj_type)
    click_on "Edit this obj type", match: :first

    fill_in "Max length", with: @obj_type.max_length
    fill_in "Type", with: @obj_type.type
    click_on "Update Obj type"

    assert_text "Obj type was successfully updated"
    click_on "Back"
  end

  test "should destroy Obj type" do
    visit obj_type_url(@obj_type)
    click_on "Destroy this obj type", match: :first

    assert_text "Obj type was successfully destroyed"
  end
end
