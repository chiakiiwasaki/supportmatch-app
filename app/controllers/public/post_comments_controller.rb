class Public::PostCommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @post_comment = PostComment.new(post_comment_params)
    @post_comment.user_id = current_user.id
    @post_comment.post_id = @post.id
    if @post_comment.save
      @post_comment = PostComment.new
    end
    # redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    post_comment = @post.post_comments.find(params[:id])
    post_comment.destroy
    # redirect_to post_path(@post)
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:content)
  end
end
