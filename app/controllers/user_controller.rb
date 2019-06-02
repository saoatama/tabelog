class UserController < ApplicationController
    before_action :authenticate_user!
    def home
        @user = User.find(current_user.id)
        redirect_to "mypage/#{current_user.id}"
    end
    
    def my_page
        
    end
end
