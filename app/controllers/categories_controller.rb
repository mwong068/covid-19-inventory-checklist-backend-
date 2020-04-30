class CategoriesController < ApplicationController

    def index
        @categories = Category.all
        render json: @categories
    end

    def show
        @category = Category.find(params[:id])
        render json: @category
    end
    
    def create
        @category = Category.create(category_params)
        render json: @category
    end

    def update
        @category = Category.update(category_params)
        render json: @category
    end

    def destroy
        @category.delete
        @categories = Category.all
        render json: @categories
    end

    private
    
    def find_category
        @category = Category.find(params[:id])
    end

    def category_params
        params.require(:category).permit(:name, :description, :image_url)
    end
    
end
