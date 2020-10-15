class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        @user = User.create!(user_params)

        if user.valid?
            render json:{user: UserSerializer.new(@user) }, status :created
        else
            render json: {error: user.errors.full_messages}, status: :not_acceptable
        end
    end

    def show
        user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        user.update!(user_params)

        if user.save
            render json: user  
        else
            render json: {error: user.errors.full_messages}, status: :not_acceptable
        end
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: {}
    end

    private 
    
    def user_params
        params.require(:user).permit(:name, :password)
    end
end
