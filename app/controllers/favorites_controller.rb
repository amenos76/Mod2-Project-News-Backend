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

end
