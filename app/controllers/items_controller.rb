class ItemsController < ApplicationController

before_action :authenticate, only: [:create]

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

end
