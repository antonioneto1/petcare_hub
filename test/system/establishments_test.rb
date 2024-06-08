require "application_system_test_case"

class EstablishmentsTest < ApplicationSystemTestCase
  setup do
    @establishment = establishments(:one)
  end

  test "visiting the index" do
    visit establishments_url
    assert_selector "h1", text: "Establishments"
  end

  test "should create establishment" do
    visit establishments_url
    click_on "New establishment"

    click_on "Create Establishment"

    assert_text "Establishment was successfully created"
    click_on "Back"
  end

  test "should update Establishment" do
    visit establishment_url(@establishment)
    click_on "Edit this establishment", match: :first

    click_on "Update Establishment"

    assert_text "Establishment was successfully updated"
    click_on "Back"
  end

  test "should destroy Establishment" do
    visit establishment_url(@establishment)
    click_on "Destroy this establishment", match: :first

    assert_text "Establishment was successfully destroyed"
  end
end
