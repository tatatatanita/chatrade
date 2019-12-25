class PostsController < ApplicationController
  before_action :set_group

  def index
    @post = Post.new
    @posts = @forum.posts.includes(:user)
  end

  def create
    @post = @forum.posts.new(post_params)
    if @post.save
      redirect_to posts_path(@group), notice: 'メッセージが送信されました'
    else
      @posts = @forum.posts.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :index
    end
  end

  private

  def post_params
    params.require(:post).permit(:text, :image).merge(user_id: current_user.id)
  end

  def set_group
    @forum = Forum.find(params[:forum_id])
  end

end
