class NeededItemsController < ApplicationController

    def index
        @items = NeededItem.all 
        render json: @items
    end

    def show
        @item = NeededItem.find(params[:id])
        render json: @item
    end
    
end
