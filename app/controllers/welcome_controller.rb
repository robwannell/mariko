class WelcomeController < ApplicationController
  
  
  
  def index
    @metatag = Metatag.find(1)
    @title = @metatag.pagetitle
    @news = News.first
  end
end
