class PostsController < ApplicationController
  
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:content, :image).merge(user_id: current_user.id)
  end

end