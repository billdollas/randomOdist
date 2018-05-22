require "application_system_test_case"

class OdistsTest < ApplicationSystemTestCase
  setup do
    @odist = odists(:one)
  end

  test "visiting the index" do
    visit odists_url
    assert_selector "h1", text: "Odists"
  end

  test "creating a Odist" do
    visit odists_url
    click_on "New Odist"

    fill_in "Poetry", with: @odist.poetry
    click_on "Create Odist"

    assert_text "Odist was successfully created"
    click_on "Back"
  end

  test "updating a Odist" do
    visit odists_url
    click_on "Edit", match: :first

    fill_in "Poetry", with: @odist.poetry
    click_on "Update Odist"

    assert_text "Odist was successfully updated"
    click_on "Back"
  end

  test "destroying a Odist" do
    visit odists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Odist was successfully destroyed"
  end
end
