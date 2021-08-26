class Admins::PostsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.is_valid?
      @post.update(is_valid: false)
    else
      @post.update(is_valid: true)
    end
    redirect_to admins_post_path(@post)
  end

  def her_posts
    @user = User.find(params[:id])
    @posts = Post.where(user_id: @user.id, is_valid: true)
  end

end
