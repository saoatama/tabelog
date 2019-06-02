class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy, :judge]
  before_action :authenticate_admin!, only: [:index]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new
    @user = params[:user_id]
    @restaurant = params[:restaurant_id]
    @reported = 1
  end

  # GET /reviews/1/edit
  def edit
    @user = @review.user_id
    @restaurant = @review.restaurant_id
    @reported = @review.reported
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    if params[:user].to_i==@review.user.id
      @review.destroy
      respond_to do |format|
        format.html { redirect_to "/show/#{@review.restaurant.id}/reviews", notice: 'Review was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      @review.reported += 10;
      @review.save
      redirect_to root_url
    end
  end
  
  def judge
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:user_id, :restaurant_id, :title, :rating, :review, :budget_id, :reported)
    end
end
