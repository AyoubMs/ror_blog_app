class PostsController < ApplicationController
  def index
    author_id = params[:user_id]
    @user = User.find(author_id)
    @posts = @user.posts
  end

  def show
    id = params[:id]
    @post = Post.find(id)
  end

  def new
    @current_user = params[:user_id]
    @new_post = Post.new
  end
end
