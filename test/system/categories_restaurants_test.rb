require "application_system_test_case"

class CategoriesRestaurantsTest < ApplicationSystemTestCase
  setup do
    @categories_restaurant = categories_restaurants(:one)
  end

  test "visiting the index" do
    visit categories_restaurants_url
    assert_selector "h1", text: "Categories Restaurants"
  end

  test "creating a Categories restaurant" do
    visit categories_restaurants_url
    click_on "New Categories Restaurant"

    click_on "Create Categories restaurant"

    assert_text "Categories restaurant was successfully created"
    click_on "Back"
  end

  test "updating a Categories restaurant" do
    visit categories_restaurants_url
    click_on "Edit", match: :first

    click_on "Update Categories restaurant"

    assert_text "Categories restaurant was successfully updated"
    click_on "Back"
  end

  test "destroying a Categories restaurant" do
    visit categories_restaurants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Categories restaurant was successfully destroyed"
  end
end
