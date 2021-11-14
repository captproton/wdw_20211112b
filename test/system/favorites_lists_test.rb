require "application_system_test_case"

class FavoritesListsTest < ApplicationSystemTestCase
  setup do
    @favorites_list = favorites_lists(:one)
  end

  test "visiting the index" do
    visit favorites_lists_url
    assert_selector "h1", text: "Favorites Lists"
  end

  test "creating a Favorites list" do
    visit favorites_lists_url
    click_on "New Favorites List"

    fill_in "Name", with: @favorites_list.name
    click_on "Create Favorites list"

    assert_text "Favorites list was successfully created"
    click_on "Back"
  end

  test "updating a Favorites list" do
    visit favorites_lists_url
    click_on "Edit", match: :first

    fill_in "Name", with: @favorites_list.name
    click_on "Update Favorites list"

    assert_text "Favorites list was successfully updated"
    click_on "Back"
  end

  test "destroying a Favorites list" do
    visit favorites_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Favorites list was successfully destroyed"
  end
end
