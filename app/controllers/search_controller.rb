class SearchController < ApplicationController

    def index
        base_URL = "http://newsapi.org/v2/top-headlines?country=us"
        api_key = "&apiKey=e5d29336262c4ceb8cb14b81d892adce"
        category_param = `&category=#{params[:category]}`
        keyword_param = `&q=#{params[:q]}`
        # url = "http://newsapi.org/v2/top-headlines?country=us&category=technology&apiKey=e5d29336262c4ceb8cb14b81d892adce"
        response = RestClient.get(base_URL + category_param + keyword_param + api_key)
        result = JSON.parse(response)
        filtered_articles = result["articles"]
            
        render json: filtered_articles
    end

end
