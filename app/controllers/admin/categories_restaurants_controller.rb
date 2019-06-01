class Admin::CategoriesRestaurantsController < ApplicationController
  before_action :set_categories_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /admin/categories_restaurants
  # GET /admin/categories_restaurants.json
  def index
    @categories_restaurants = CategoriesRestaurant.all
  end

  # GET /admin/categories_restaurants/1
  # GET /admin/categories_restaurants/1.json
  def show
  end

  # GET /admin/categories_restaurants/new
  def new
    @categories_restaurant = CategoriesRestaurant.new
  end

  # GET /admin/categories_restaurants/1/edit
  def edit
  end

  # POST /admin/categories_restaurants
  # POST /admin/categories_restaurants.json
  def create
    @categories_restaurant = CategoriesRestaurant.new(categories_restaurant_params)

    respond_to do |format|
      if @categories_restaurant.save
        format.html { redirect_to [:admin, @categories_restaurant], notice: 'Categories restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @categories_restaurant }
      else
        format.html { render :new }
        format.json { render json: @categories_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/categories_restaurants/1
  # PATCH/PUT /admin/categories_restaurants/1.json
  def update
    respond_to do |format|
      if @categories_restaurant.update(categories_restaurant_params)
        format.html { redirect_to [:admin, @categories_restaurant], notice: 'Categories restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @categories_restaurant }
      else
        format.html { render :edit }
        format.json { render json: @categories_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/categories_restaurants/1
  # DELETE /admin/categories_restaurants/1.json
  def destroy
    CategoriesRestaurant.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to [:admin, categories_restaurants_url], notice: 'Categories restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categories_restaurant
      @categories_restaurant = CategoriesRestaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categories_restaurant_params
      params.require(:categories_restaurant).permit(:category_id, :restaurant_id)
    end
end
