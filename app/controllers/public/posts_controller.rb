class Public::PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_current_user, {only: [:destroy]}

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.score = Language.get_data(post_params[:content])
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def index
    @posts = Post.where(is_valid: true).joins(:user).where("users.is_valid").page(params[:page])
    @bad_words = ["死", "しね", "殺", "ばか", "気持ち悪い", "うっせえ"]
  end

  def show
    @post = Post.find(params[:id])
    @post_comment = PostComment.new
    @bad_words = ["死", "しね", "殺", "ばか", "気持ち悪い", "うっせえ"]
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def her_posts
    @user = User.find(params[:id])
    @posts = Post.where(user_id: @user.id, is_valid: true).page(params[:page])
    @bad_words = ["死", "しね", "殺", "ばか", "気持ち悪い", "うっせえ"]
  end


  private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
