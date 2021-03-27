require 'test_helper'

class MapatestiranjasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mapatestiranja = mapatestiranjas(:one)
  end

  test "should get index" do
    get mapatestiranjas_url
    assert_response :success
  end

  test "should get new" do
    get new_mapatestiranja_url
    assert_response :success
  end

  test "should create mapatestiranja" do
    assert_difference('Mapatestiranja.count') do
      post mapatestiranjas_url, params: { mapatestiranja: {  } }
    end

    assert_redirected_to mapatestiranja_url(Mapatestiranja.last)
  end

  test "should show mapatestiranja" do
    get mapatestiranja_url(@mapatestiranja)
    assert_response :success
  end

  test "should get edit" do
    get edit_mapatestiranja_url(@mapatestiranja)
    assert_response :success
  end

  test "should update mapatestiranja" do
    patch mapatestiranja_url(@mapatestiranja), params: { mapatestiranja: {  } }
    assert_redirected_to mapatestiranja_url(@mapatestiranja)
  end

  test "should destroy mapatestiranja" do
    assert_difference('Mapatestiranja.count', -1) do
      delete mapatestiranja_url(@mapatestiranja)
    end

    assert_redirected_to mapatestiranjas_url
  end
end
