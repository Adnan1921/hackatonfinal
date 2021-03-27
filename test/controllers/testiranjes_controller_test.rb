require 'test_helper'

class TestiranjesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testiranje = testiranjes(:one)
  end

  test "should get index" do
    get testiranjes_url
    assert_response :success
  end

  test "should get new" do
    get new_testiranje_url
    assert_response :success
  end

  test "should create testiranje" do
    assert_difference('Testiranje.count') do
      post testiranjes_url, params: { testiranje: { datum: @testiranje.datum, ime: @testiranje.ime, jmbg: @testiranje.jmbg, knjizica: @testiranje.knjizica } }
    end

    assert_redirected_to testiranje_url(Testiranje.last)
  end

  test "should show testiranje" do
    get testiranje_url(@testiranje)
    assert_response :success
  end

  test "should get edit" do
    get edit_testiranje_url(@testiranje)
    assert_response :success
  end

  test "should update testiranje" do
    patch testiranje_url(@testiranje), params: { testiranje: { datum: @testiranje.datum, ime: @testiranje.ime, jmbg: @testiranje.jmbg, knjizica: @testiranje.knjizica } }
    assert_redirected_to testiranje_url(@testiranje)
  end

  test "should destroy testiranje" do
    assert_difference('Testiranje.count', -1) do
      delete testiranje_url(@testiranje)
    end

    assert_redirected_to testiranjes_url
  end
end
