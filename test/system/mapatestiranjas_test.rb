require "application_system_test_case"

class MapatestiranjasTest < ApplicationSystemTestCase
  setup do
    @mapatestiranja = mapatestiranjas(:one)
  end

  test "visiting the index" do
    visit mapatestiranjas_url
    assert_selector "h1", text: "Mapatestiranjas"
  end

  test "creating a Mapatestiranja" do
    visit mapatestiranjas_url
    click_on "New Mapatestiranja"

    click_on "Create Mapatestiranja"

    assert_text "Mapatestiranja was successfully created"
    click_on "Back"
  end

  test "updating a Mapatestiranja" do
    visit mapatestiranjas_url
    click_on "Edit", match: :first

    click_on "Update Mapatestiranja"

    assert_text "Mapatestiranja was successfully updated"
    click_on "Back"
  end

  test "destroying a Mapatestiranja" do
    visit mapatestiranjas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mapatestiranja was successfully destroyed"
  end
end
