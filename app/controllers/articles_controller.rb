class ArticlesController < ApplicationController

  def index
    url = "http://newsapi.org/v2/top-headlines?country=us&apiKey=e5d29336262c4ceb8cb14b81d892adce"
    response = RestClient.get(url)
    result = JSON.parse(response)
    articles = result["articles"]    
    
    render json: articles
  end

end
