class TagsController < ApplicationController

  def new
    @tag = Tag.new
  end

  def create
    Tag.create(tag_params)
    redirect_to root_path
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    tag = Tag.find(params[:id])
    tag.update(tag_params)
    redirect_to root_path
  end

  private
  def tag_params
    params.require(:tag).permit(:title).merge(user_id: current_user.id)
  end

end