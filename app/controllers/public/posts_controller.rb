class Public::PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def index
    @posts = Post.where(is_valid: true).joins(:user).where("users.is_valid")
  end

  def show
    @post = Post.find(params[:id])
    @post_comment = PostComment.new
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def her_posts
    @user = User.find(params[:id])
    @posts = Post.where(user_id: @user.id, is_valid: true)
  end


  private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
