class SportsController < ApplicationController

    def index
        url = "http://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=e5d29336262c4ceb8cb14b81d892adce"
        response = RestClient.get(url)
        result = JSON.parse(response)
        sports_articles = result["articles"]
            
        render json: sports_articles
    end

end
