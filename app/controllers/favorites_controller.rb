class FavoritesController < ApplicationController

    def index
        @favorites = Favorite.all 

        render json: @favorites
    end

    def create
        @favorite = Favorite.create(
            title: params[:title], 
            description: params[:description],
            link_to_image: params[:link_to_image],
            link_to_story: params[:link_to_story])

        render json: @favorite
    end

    def show
        @favorite = Favorite.find(params[:id])

        render json: @favorite
    end

    def destroy
        @favorite = Favorite.find(params[:id])

        @favorite.destroy
    end

end
