require "application_system_test_case"

class ReservesTest < ApplicationSystemTestCase
  setup do
    @reserf = reserves(:one)
  end

  test "visiting the index" do
    visit reserves_url
    assert_selector "h1", text: "Reserves"
  end

  test "creating a Reserve" do
    visit reserves_url
    click_on "New Reserve"

    fill_in "Date", with: @reserf.date
    fill_in "E mail", with: @reserf.e_mail
    fill_in "Member", with: @reserf.member
    fill_in "Name", with: @reserf.name
    fill_in "Restaurant", with: @reserf.restaurant_id
    fill_in "Time", with: @reserf.time
    click_on "Create Reserve"

    assert_text "Reserve was successfully created"
    click_on "Back"
  end

  test "updating a Reserve" do
    visit reserves_url
    click_on "Edit", match: :first

    fill_in "Date", with: @reserf.date
    fill_in "E mail", with: @reserf.e_mail
    fill_in "Member", with: @reserf.member
    fill_in "Name", with: @reserf.name
    fill_in "Restaurant", with: @reserf.restaurant_id
    fill_in "Time", with: @reserf.time
    click_on "Update Reserve"

    assert_text "Reserve was successfully updated"
    click_on "Back"
  end

  test "destroying a Reserve" do
    visit reserves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reserve was successfully destroyed"
  end
end
