class TopController < ApplicationController
  def index
    @tags = Tag.all
  end
  
end
