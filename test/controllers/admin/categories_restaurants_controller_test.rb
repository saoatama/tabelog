require 'test_helper'

class Admin::CategoriesRestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_categories_restaurant = admin_categories_restaurants(:one)
  end

  test "should get index" do
    get admin_categories_restaurants_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_categories_restaurant_url
    assert_response :success
  end

  test "should create admin_categories_restaurant" do
    assert_difference('Admin::CategoriesRestaurant.count') do
      post admin_categories_restaurants_url, params: { admin_categories_restaurant: { category_id: @admin_categories_restaurant.category_id, restaurant_id: @admin_categories_restaurant.restaurant_id } }
    end

    assert_redirected_to admin_categories_restaurant_url(Admin::CategoriesRestaurant.last)
  end

  test "should show admin_categories_restaurant" do
    get admin_categories_restaurant_url(@admin_categories_restaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_categories_restaurant_url(@admin_categories_restaurant)
    assert_response :success
  end

  test "should update admin_categories_restaurant" do
    patch admin_categories_restaurant_url(@admin_categories_restaurant), params: { admin_categories_restaurant: { category_id: @admin_categories_restaurant.category_id, restaurant_id: @admin_categories_restaurant.restaurant_id } }
    assert_redirected_to admin_categories_restaurant_url(@admin_categories_restaurant)
  end

  test "should destroy admin_categories_restaurant" do
    assert_difference('Admin::CategoriesRestaurant.count', -1) do
      delete admin_categories_restaurant_url(@admin_categories_restaurant)
    end

    assert_redirected_to admin_categories_restaurants_url
  end
end
