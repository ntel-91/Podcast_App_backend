class UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users
    end

    def show
        
        user = User.find(params[:id].to_i)
        render json: user.episodes
    end

end
