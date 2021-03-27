require "application_system_test_case"

class TestiranjesTest < ApplicationSystemTestCase
  setup do
    @testiranje = testiranjes(:one)
  end

  test "visiting the index" do
    visit testiranjes_url
    assert_selector "h1", text: "Testiranjes"
  end

  test "creating a Testiranje" do
    visit testiranjes_url
    click_on "New Testiranje"

    fill_in "Datum", with: @testiranje.datum
    fill_in "Ime", with: @testiranje.ime
    fill_in "Jmbg", with: @testiranje.jmbg
    fill_in "Knjizica", with: @testiranje.knjizica
    click_on "Create Testiranje"

    assert_text "Testiranje was successfully created"
    click_on "Back"
  end

  test "updating a Testiranje" do
    visit testiranjes_url
    click_on "Edit", match: :first

    fill_in "Datum", with: @testiranje.datum
    fill_in "Ime", with: @testiranje.ime
    fill_in "Jmbg", with: @testiranje.jmbg
    fill_in "Knjizica", with: @testiranje.knjizica
    click_on "Update Testiranje"

    assert_text "Testiranje was successfully updated"
    click_on "Back"
  end

  test "destroying a Testiranje" do
    visit testiranjes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testiranje was successfully destroyed"
  end
end
