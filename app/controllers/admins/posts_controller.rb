class Admins::PostsController < ApplicationController
  def index
    @posts = Post.all.page(params[:page])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
  end
end
