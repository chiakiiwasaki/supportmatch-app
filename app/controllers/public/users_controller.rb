class Public::UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @rooms = Room.where(user_id: current_user)
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to users_my_page_path
    end
  end

  def unsubscribe
    @user = current_user
  end

  def withdraw
    @user = current_user
    @user.update(is_valid: false)
    reset_session
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:image, :name, :email, :introduction)
    end
end
