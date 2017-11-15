require 'test_helper'

class RepasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repa = repas(:one)
  end

  test "should get index" do
    get repas_url
    assert_response :success
  end

  test "should get new" do
    get new_repa_url
    assert_response :success
  end

  test "should create repa" do
    assert_difference('Repa.count') do
      post repas_url, params: { repa: { date: @repa.date, descritpion: @repa.descritpion, titre: @repa.titre } }
    end

    assert_redirected_to repa_url(Repa.last)
  end

  test "should show repa" do
    get repa_url(@repa)
    assert_response :success
  end

  test "should get edit" do
    get edit_repa_url(@repa)
    assert_response :success
  end

  test "should update repa" do
    patch repa_url(@repa), params: { repa: { date: @repa.date, descritpion: @repa.descritpion, titre: @repa.titre } }
    assert_redirected_to repa_url(@repa)
  end

  test "should destroy repa" do
    assert_difference('Repa.count', -1) do
      delete repa_url(@repa)
    end

    assert_redirected_to repas_url
  end
end
