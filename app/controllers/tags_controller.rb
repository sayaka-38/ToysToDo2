class TagsController < ApplicationController
  before_action :set_tag, only: [:edit, :update, :destroy]

  def new
    @tag = Tag.new
  end

  def create
    Tag.create(tag_params)
    redirect_to root_path
  end

  def edit
  end

  def update
    @tag.update(tag_params)
    redirect_to root_path
  end

  def destroy
    @tag.destroy
    redirect_to root_path
  end

  private
  def tag_params
    params.require(:tag).permit(:title).merge(user_id: current_user.id)
  end

  def set_tag
    @tag = Tag.find(params[:id])
  end

end