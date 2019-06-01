class PublicController < ApplicationController
    def home
        
    end
    
    def list
        @name = params[:name]
        @budget_id = params[:budget_id]
        if !@name then
            @restaurants = Restaurant.where('budget_id = ?', params[:budget_id])
        elsif !@budget_id then
            @restaurants = Restaurant.where('name LIKE ?', "%#{params[:name]}%")
        else
            @restaurants = Restaurant.where('name LIKE ? AND budget_id = ?', "%#{params[:name]}%", params[:budget_id])
        end
    end
    
    def list_categories
    end
end
