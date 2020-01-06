class UsersController < ApplicationController

    def create
        @user = User.new(user_params)

        if @user.save
            render json: @user
        else
            render json: {error: "Bad user"}, status: :bad_request
        end
    end

    private

    def user_params
        params.permit(:username, :password)
    end

end
