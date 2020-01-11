class UserItemsController < ApplicationController

    skip_before_action :authenticate

    def cart
        cartItem = UserItem.find{|userItem| userItem.item_id === params[:item_id] && userItem.user_id === params[:user_id]}
        if(cartItem)
            cartItem.update(quantity: cartItem.quantity + 1)
            render json: cartItem
        else
            @user_item = UserItem.create(user_item_params)
            render json: @user_item
        end
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
