class EntertainmentController < ApplicationController

    def index
        url = "http://newsapi.org/v2/top-headlines?country=us&category=entertainment&apiKey=e5d29336262c4ceb8cb14b81d892adce"
        response = RestClient.get(url)
        result = JSON.parse(response)
        entertainment_articles = result["articles"]
            
        render json: entertainment_articles
    end

end
