class TechnologyController < ApplicationController
    
    def index
        url = "http://newsapi.org/v2/top-headlines?country=us&category=technology&apiKey=e5d29336262c4ceb8cb14b81d892adce"
        response = RestClient.get(url)
        result = JSON.parse(response)
        technology_articles = result["articles"]
            
        render json: technology_articles
    end

end
