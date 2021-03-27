require 'test_helper'

class VakcinisanjesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vakcinisanje = vakcinisanjes(:one)
  end

  test "should get index" do
    get vakcinisanjes_url
    assert_response :success
  end

  test "should get new" do
    get new_vakcinisanje_url
    assert_response :success
  end

  test "should create vakcinisanje" do
    assert_difference('Vakcinisanje.count') do
      post vakcinisanjes_url, params: { vakcinisanje: { datum: @vakcinisanje.datum, ime: @vakcinisanje.ime, jmbg: @vakcinisanje.jmbg, knjizica: @vakcinisanje.knjizica } }
    end

    assert_redirected_to vakcinisanje_url(Vakcinisanje.last)
  end

  test "should show vakcinisanje" do
    get vakcinisanje_url(@vakcinisanje)
    assert_response :success
  end

  test "should get edit" do
    get edit_vakcinisanje_url(@vakcinisanje)
    assert_response :success
  end

  test "should update vakcinisanje" do
    patch vakcinisanje_url(@vakcinisanje), params: { vakcinisanje: { datum: @vakcinisanje.datum, ime: @vakcinisanje.ime, jmbg: @vakcinisanje.jmbg, knjizica: @vakcinisanje.knjizica } }
    assert_redirected_to vakcinisanje_url(@vakcinisanje)
  end

  test "should destroy vakcinisanje" do
    assert_difference('Vakcinisanje.count', -1) do
      delete vakcinisanje_url(@vakcinisanje)
    end

    assert_redirected_to vakcinisanjes_url
  end
end
