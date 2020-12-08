class ArticlesController < ApplicationController

    def index
      # url = "http://newsapi.org/v2/top-headlines?country=us&apiKey=e5d29336262c4ceb8cb14b81d892adce"
      # url = "http://newsapi.org/v2/top-headlines?country=us&apiKey=5afa4eb9d42144bd9419a4ec2683f5a1"
      url = "http://newsapi.org/v2/top-headlines?country=us&apiKey=6603667d30cd4006969dd06dd9fa0d79"
      response = RestClient.get(url)
      result = JSON.parse(response)
      articles = result["articles"]    
      
      render json: articles
    end

end
