require "application_system_test_case"

class VakcinisanjesTest < ApplicationSystemTestCase
  setup do
    @vakcinisanje = vakcinisanjes(:one)
  end

  test "visiting the index" do
    visit vakcinisanjes_url
    assert_selector "h1", text: "Vakcinisanjes"
  end

  test "creating a Vakcinisanje" do
    visit vakcinisanjes_url
    click_on "New Vakcinisanje"

    fill_in "Datum", with: @vakcinisanje.datum
    fill_in "Ime", with: @vakcinisanje.ime
    fill_in "Jmbg", with: @vakcinisanje.jmbg
    fill_in "Knjizica", with: @vakcinisanje.knjizica
    click_on "Create Vakcinisanje"

    assert_text "Vakcinisanje was successfully created"
    click_on "Back"
  end

  test "updating a Vakcinisanje" do
    visit vakcinisanjes_url
    click_on "Edit", match: :first

    fill_in "Datum", with: @vakcinisanje.datum
    fill_in "Ime", with: @vakcinisanje.ime
    fill_in "Jmbg", with: @vakcinisanje.jmbg
    fill_in "Knjizica", with: @vakcinisanje.knjizica
    click_on "Update Vakcinisanje"

    assert_text "Vakcinisanje was successfully updated"
    click_on "Back"
  end

  test "destroying a Vakcinisanje" do
    visit vakcinisanjes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vakcinisanje was successfully destroyed"
  end
end
