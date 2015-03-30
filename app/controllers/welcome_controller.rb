class WelcomeController < ApplicationController
  
  
  
  def index
    @title = "Welcome"
  @news = News.first
  end
end
