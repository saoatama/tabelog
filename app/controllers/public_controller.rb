class PublicController < ApplicationController
    before_action :set_budgets
    
    def home
        @categories = Category.all
    end
    
    def list
        #絞り込み
        @name = params[:name]
        @budget_id = params[:budget_id]
        if !@name then
            @restaurants = Restaurant.where('budget_id = ?', params[:budget_id])
        elsif !@budget_id then
            @restaurants = Restaurant.where('name LIKE ?', "%#{params[:name]}%")
        else
            @restaurants = Restaurant.where('name LIKE ? AND budget_id = ?', "%#{params[:name]}%", params[:budget_id])
        end
        
        #ソート
        @sort = params[:sort]
        case @sort
        when "rating" then
            @restaurants = @restaurants.order(rating: :desc)
        when "reasonable" then
            @restaurants = @restaurants.order(budget_id: :asc)
        when "expensive" then
            @restaurants = @restaurants.order(budget_id: :desc)
        end
        #口コミが実装されたら口コミの多さ順でのソートを実装する
    end
    
    def list_categories
        @category = Category.find(params[:id])
        @restaurants = @category.restaurants
        render 'public/list'
    end
    
    private
    def set_budgets
        @budgets = Budget.all
    end
end
