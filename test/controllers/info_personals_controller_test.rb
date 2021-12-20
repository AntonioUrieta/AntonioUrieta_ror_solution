require "test_helper"

class InfoPersonalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @info_personal = info_personals(:one)
  end

  test "should get index" do
    get info_personals_url
    assert_response :success
  end

  test "should get new" do
    get new_info_personal_url
    assert_response :success
  end

  test "should create info_personal" do
    assert_difference("InfoPersonal.count") do
      post info_personals_url, params: { info_personal: { city: @info_personal.city, country: @info_personal.country, fav_charecter: @info_personal.fav_charecter, fav_comic: @info_personal.fav_comic, idUser: @info_personal.idUser, state: @info_personal.state } }
    end

    assert_redirected_to info_personal_url(InfoPersonal.last)
  end

  test "should show info_personal" do
    get info_personal_url(@info_personal)
    assert_response :success
  end

  test "should get edit" do
    get edit_info_personal_url(@info_personal)
    assert_response :success
  end

  test "should update info_personal" do
    patch info_personal_url(@info_personal), params: { info_personal: { city: @info_personal.city, country: @info_personal.country, fav_charecter: @info_personal.fav_charecter, fav_comic: @info_personal.fav_comic, idUser: @info_personal.idUser, state: @info_personal.state } }
    assert_redirected_to info_personal_url(@info_personal)
  end

  test "should destroy info_personal" do
    assert_difference("InfoPersonal.count", -1) do
      delete info_personal_url(@info_personal)
    end

    assert_redirected_to info_personals_url
  end
end
