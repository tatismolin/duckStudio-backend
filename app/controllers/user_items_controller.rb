class UserItemsController < ApplicationController

    def cart
        cartItem = UserItem.find{|userItem| userItem.item_id === params[:item_id] && userItem.user_id === params[:user_id]}
        if(cartItem)
            cartItem.update(quantity: cartItem.quantity += 1)
            render json: cartItem
        else
            @user_item = UserItem.create(user_item_params)
            render json: @user_item
        end
    end

    def show
        @user_items = @user.user_items
        render json: @user_items
    end

    def index
        @user_item = UserItem.find(params[:id]) 
        render json: @user_item
    end

    def destroy
        @user_item = UserItem.find(params[:id]) 
        @user_item.destroy
    end

    private

    def user_item_params
        params.permit(:user_id, :item_id, :quantity).merge(quantity: 1)
    end

end
