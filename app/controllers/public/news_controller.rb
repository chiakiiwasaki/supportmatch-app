class Public::NewsController < ApplicationController
  require "open-uri"
    def index
      uri = "https://newsapi.org/v2/everything?q=%E9%98%B2%E7%81%BD&sortBy=popularity&apiKey=#{ENV['NEWS_API']}"
      article_serialized = open(uri).read
      @articles = JSON.parse(article_serialized)
    end
end