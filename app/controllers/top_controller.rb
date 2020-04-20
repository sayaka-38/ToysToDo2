class TopController < ApplicationController
  def index
    @tags = Tag.all
    @posts = Post.includes(:user)
  end

  def create
  end
  
end
