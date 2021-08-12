class Admins::PostCommentsController < ApplicationController
  before_action :authenticate_admin!

  def update
    @post = Post.find(params[:post_id])
    post_comment = @post.post_comments.find(params[:id])
    if post_comment.is_valid?
      post_comment.update(is_valid: false)
    else
      post_comment.update(is_valid: true)
    end
    redirect_to admins_post_path(@post)
  end
end
