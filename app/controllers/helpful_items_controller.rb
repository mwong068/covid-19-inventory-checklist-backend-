class HelpfulItemsController < ApplicationController

    def index
        @items = HelpfulItem.all
        render json: @items
    end

    def show
        @item = HelpfulItem.find(params[:id])
        render json: { item: HelpfulItemsSerializer.new(@item) }
    end

    def create
        @item = HelpfulItem.create(item_params)
        render json: { item: HelpfulItemsSerializer.new(@item) }
    end

    private

    def item_params
        params.require(:helpful_item).permit(:name, :quantity, :description, :availability, :image_url, :helpful_user_id, :category_id)
    end
    
end
