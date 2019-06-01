require 'test_helper'

class CategoriesRestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categories_restaurant = categories_restaurants(:one)
  end

  test "should get index" do
    get categories_restaurants_url
    assert_response :success
  end

  test "should get new" do
    get new_categories_restaurant_url
    assert_response :success
  end

  test "should create categories_restaurant" do
    assert_difference('CategoriesRestaurant.count') do
      post categories_restaurants_url, params: { categories_restaurant: {  } }
    end

    assert_redirected_to categories_restaurant_url(CategoriesRestaurant.last)
  end

  test "should show categories_restaurant" do
    get categories_restaurant_url(@categories_restaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit_categories_restaurant_url(@categories_restaurant)
    assert_response :success
  end

  test "should update categories_restaurant" do
    patch categories_restaurant_url(@categories_restaurant), params: { categories_restaurant: {  } }
    assert_redirected_to categories_restaurant_url(@categories_restaurant)
  end

  test "should destroy categories_restaurant" do
    assert_difference('CategoriesRestaurant.count', -1) do
      delete categories_restaurant_url(@categories_restaurant)
    end

    assert_redirected_to categories_restaurants_url
  end
end
