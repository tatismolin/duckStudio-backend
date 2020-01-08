class ItemsController < ApplicationController

    skip_before_action :authenticate, except: [:create]

    def index
        @items = Item.all 
        render json: @items
    end

    def show
        @item = Item.find(params[:id]) 
        render json: @item
    end

    def create
        @item = Item.create(
            name: params[:name],
            description: params[:description],
            price: params[:price],
            user_id: params[:user_id]
        )
        render json: @item
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
    end

end
