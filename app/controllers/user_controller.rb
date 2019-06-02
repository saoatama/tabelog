class UserController < ApplicationController
    before_action :authenticate_user!
    def my_page
        unless current_user.id == params[:id].to_i then
            redirect_to root_url
        end
    end
end
