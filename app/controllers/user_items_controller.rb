class UserItemsController < ApplicationController

    skip_before_action :authenticate

    def cart
        @user_item = UserItem.create(user_item_params)
        render json: @user_item
    end

    def index
        @user_item = UserItem.find(params[:id]) 
        render json: @user_item
    end

    private

    def user_item_params
        params.permit(:user_id, :item_id)
    end

end
