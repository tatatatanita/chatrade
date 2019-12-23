class PostsController < ApplicationController

  def index
    @post = Post.find
    # @gpost = Post.find(:id)
  end

  def new
    @post = Post.new
  end

  def create
    @post = @forum.posts.new
  end

end
