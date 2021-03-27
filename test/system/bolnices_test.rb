require "application_system_test_case"

class BolnicesTest < ApplicationSystemTestCase
  setup do
    @bolnice = bolnices(:one)
  end

  test "visiting the index" do
    visit bolnices_url
    assert_selector "h1", text: "Bolnices"
  end

  test "creating a Bolnice" do
    visit bolnices_url
    click_on "New Bolnice"

    fill_in "Broj", with: @bolnice.broj
    fill_in "Lokacija", with: @bolnice.lokacija
    fill_in "Naziv ustanove", with: @bolnice.naziv_ustanove
    fill_in "Odijeljenje", with: @bolnice.odijeljenje
    fill_in "Radno vrijeme", with: @bolnice.radno_vrijeme
    fill_in "Vrijeme cekanja", with: @bolnice.vrijeme_cekanja
    click_on "Create Bolnice"

    assert_text "Bolnice was successfully created"
    click_on "Back"
  end

  test "updating a Bolnice" do
    visit bolnices_url
    click_on "Edit", match: :first

    fill_in "Broj", with: @bolnice.broj
    fill_in "Lokacija", with: @bolnice.lokacija
    fill_in "Naziv ustanove", with: @bolnice.naziv_ustanove
    fill_in "Odijeljenje", with: @bolnice.odijeljenje
    fill_in "Radno vrijeme", with: @bolnice.radno_vrijeme
    fill_in "Vrijeme cekanja", with: @bolnice.vrijeme_cekanja
    click_on "Update Bolnice"

    assert_text "Bolnice was successfully updated"
    click_on "Back"
  end

  test "destroying a Bolnice" do
    visit bolnices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bolnice was successfully destroyed"
  end
end
