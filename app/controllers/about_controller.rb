class AboutController < ApplicationController
  def index
    @metatag = Metatag.find(2)
  end
end
