class Public::PostCommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_current_user, {only: [:destroy]}

  def create
    @post = Post.find(params[:post_id])
    @post_comment = PostComment.new(post_comment_params)
    @post_comment.user_id = current_user.id
    @post_comment.post_id = @post.id
    @post_comment.score = Language.get_data(post_comment_params[:content])
    @bad_words = ["死", "しね", "殺", "ばか", "気持ち悪い", "うっせえ"]
    if @post_comment.save
      @post_comment = PostComment.new
    else
      flash[:alert] = "入力内容にエラーがあります"
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @bad_words = ["死", "しね", "殺", "ばか", "気持ち悪い", "うっせえ"]
    post_comment = @post.post_comments.find(params[:id])
    post_comment.destroy
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:content)
  end
end
