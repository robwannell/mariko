class WelcomeController < ApplicationController
  
  
  
  def index
    @metatag = Metatag.find(1)
    @news = News.first
  end
end
