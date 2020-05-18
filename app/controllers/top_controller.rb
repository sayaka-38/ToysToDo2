class TopController < ApplicationController

  def index
    @tags = Tag.all
    @posts = Post.includes(:user).order("id DESC")
    @post = Post.new
  end

end