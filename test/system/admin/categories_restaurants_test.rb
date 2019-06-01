require "application_system_test_case"

class Admin::CategoriesRestaurantsTest < ApplicationSystemTestCase
  setup do
    @admin_categories_restaurant = admin_categories_restaurants(:one)
  end

  test "visiting the index" do
    visit admin_categories_restaurants_url
    assert_selector "h1", text: "Admin/Categories Restaurants"
  end

  test "creating a Categories restaurant" do
    visit admin_categories_restaurants_url
    click_on "New Admin/Categories Restaurant"

    fill_in "Category", with: @admin_categories_restaurant.category_id
    fill_in "Restaurant", with: @admin_categories_restaurant.restaurant_id
    click_on "Create Categories restaurant"

    assert_text "Categories restaurant was successfully created"
    click_on "Back"
  end

  test "updating a Categories restaurant" do
    visit admin_categories_restaurants_url
    click_on "Edit", match: :first

    fill_in "Category", with: @admin_categories_restaurant.category_id
    fill_in "Restaurant", with: @admin_categories_restaurant.restaurant_id
    click_on "Update Categories restaurant"

    assert_text "Categories restaurant was successfully updated"
    click_on "Back"
  end

  test "destroying a Categories restaurant" do
    visit admin_categories_restaurants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Categories restaurant was successfully destroyed"
  end
end
