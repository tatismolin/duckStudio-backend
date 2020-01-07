class UsersController < ApplicationController

    skip_before_action :authenticate, except: [:profile]

    def profile
        render json: @user, include: [:items]
    end

    def create
        @user = User.new(user_params)

        if @user.save
            render json: @user
        else
            render json: {error: "Bad user"}, status: :bad_request
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end

    private

    def user_params
        params.permit(:username, :password)
    end

end
