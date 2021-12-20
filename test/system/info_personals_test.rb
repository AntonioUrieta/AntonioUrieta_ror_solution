require "application_system_test_case"

class InfoPersonalsTest < ApplicationSystemTestCase
  setup do
    @info_personal = info_personals(:one)
  end

  test "visiting the index" do
    visit info_personals_url
    assert_selector "h1", text: "Info personals"
  end

  test "should create info personal" do
    visit info_personals_url
    click_on "New info personal"

    fill_in "City", with: @info_personal.city
    fill_in "Country", with: @info_personal.country
    fill_in "Fav charecter", with: @info_personal.fav_charecter
    fill_in "Fav comic", with: @info_personal.fav_comic
    fill_in "Iduser", with: @info_personal.idUser
    fill_in "State", with: @info_personal.state
    click_on "Create Info personal"

    assert_text "Info personal was successfully created"
    click_on "Back"
  end

  test "should update Info personal" do
    visit info_personal_url(@info_personal)
    click_on "Edit this info personal", match: :first

    fill_in "City", with: @info_personal.city
    fill_in "Country", with: @info_personal.country
    fill_in "Fav charecter", with: @info_personal.fav_charecter
    fill_in "Fav comic", with: @info_personal.fav_comic
    fill_in "Iduser", with: @info_personal.idUser
    fill_in "State", with: @info_personal.state
    click_on "Update Info personal"

    assert_text "Info personal was successfully updated"
    click_on "Back"
  end

  test "should destroy Info personal" do
    visit info_personal_url(@info_personal)
    click_on "Destroy this info personal", match: :first

    assert_text "Info personal was successfully destroyed"
  end
end
