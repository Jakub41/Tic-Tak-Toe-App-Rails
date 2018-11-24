require "application_system_test_case"

class GridsTest < ApplicationSystemTestCase
  setup do
    @grid = grids(:one)
  end

  test "visiting the index" do
    visit grids_url
    assert_selector "h1", text: "Grids"
  end

  test "creating a Grid" do
    visit grids_url
    click_on "New Grid"

    click_on "Create Grid"

    assert_text "Grid was successfully created"
    click_on "Back"
  end

  test "updating a Grid" do
    visit grids_url
    click_on "Edit", match: :first

    click_on "Update Grid"

    assert_text "Grid was successfully updated"
    click_on "Back"
  end

  test "destroying a Grid" do
    visit grids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grid was successfully destroyed"
  end
end
