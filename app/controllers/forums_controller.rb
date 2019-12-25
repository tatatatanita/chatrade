class ForumsController < ApplicationController

  def index
  end

  def new
    @forum = Forum.new
    # @forum.users << current_user
  end

  def create
    @forum = Forum.new(forum_params)
    if @forum.save
      redirect_to root_path, notice: 'グループを作成しました'
    else
      render :new
    end
  end

  private
  def forum_params
    params.require(:forum).permit(:name, user_ids: [] )
  end
  
end
