class PostsController < ApplicationController

  def index
    # @post = Forum.find(params[:forum_id])
    # @gpost = Post.find(:id)
    @post = Post.new
  end

  def new
    # @forum = Forum.new
    @post = Post.new
  end

  def create
    # @forum = Forum.find(params[:forum_id])
    # @post = Post.find(params[:id])
    @post = Post.new(post_params)
    # @message = @group.messages.new(message_params)
    # @post = @forum.posts.new(post_params)
    # @post = post.new(post_params)
    # if @post.save
    #   redirect_to root_path
    # else
    #   render :new
    # end
  end

  private

  def post_params
    params.require(:post).permit(:text, :image).merge(user_id: current_user.id)
    # params.require(:post).permit(:text, :image)
  end

end
