require 'test_helper'

class BolnicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bolnice = bolnices(:one)
  end

  test "should get index" do
    get bolnices_url
    assert_response :success
  end

  test "should get new" do
    get new_bolnice_url
    assert_response :success
  end

  test "should create bolnice" do
    assert_difference('Bolnice.count') do
      post bolnices_url, params: { bolnice: { broj: @bolnice.broj, lokacija: @bolnice.lokacija, naziv_ustanove: @bolnice.naziv_ustanove, odijeljenje: @bolnice.odijeljenje, radno_vrijeme: @bolnice.radno_vrijeme, vrijeme_cekanja: @bolnice.vrijeme_cekanja } }
    end

    assert_redirected_to bolnice_url(Bolnice.last)
  end

  test "should show bolnice" do
    get bolnice_url(@bolnice)
    assert_response :success
  end

  test "should get edit" do
    get edit_bolnice_url(@bolnice)
    assert_response :success
  end

  test "should update bolnice" do
    patch bolnice_url(@bolnice), params: { bolnice: { broj: @bolnice.broj, lokacija: @bolnice.lokacija, naziv_ustanove: @bolnice.naziv_ustanove, odijeljenje: @bolnice.odijeljenje, radno_vrijeme: @bolnice.radno_vrijeme, vrijeme_cekanja: @bolnice.vrijeme_cekanja } }
    assert_redirected_to bolnice_url(@bolnice)
  end

  test "should destroy bolnice" do
    assert_difference('Bolnice.count', -1) do
      delete bolnice_url(@bolnice)
    end

    assert_redirected_to bolnices_url
  end
end
