class Public::RelationshipsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_current_user, {only: [:followings, :followers]}

  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end

  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer
  end

  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:user_id])
    @users = user.followers
  end

  private
    def ensure_current_user
      user = User.find(params[:user_id])
      if user.id != current_user.id
        redirect_to root_path
      end
    end
end
