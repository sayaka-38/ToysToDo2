class TopController < ApplicationController

  def index
    @tags = Tag.all
    @posts = Post.includes(:user)
    @post = Post.new
  end

end