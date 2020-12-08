class TechnologyController < ApplicationController
    
    def index
        # url = "http://newsapi.org/v2/top-headlines?country=us&category=technology&apiKey=e5d29336262c4ceb8cb14b81d892adce"
        # url = "http://newsapi.org/v2/top-headlines?country=us&category=technology&apiKey=5afa4eb9d42144bd9419a4ec2683f5a1"
        url = "http://newsapi.org/v2/top-headlines?country=us&category=technology&apiKey=6603667d30cd4006969dd06dd9fa0d79"
        response = RestClient.get(url)
        result = JSON.parse(response)
        technology_articles = result["articles"]
            
        render json: technology_articles
    end

end
