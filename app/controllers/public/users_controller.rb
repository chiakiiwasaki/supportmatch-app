class Public::UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to users_my_page_path
    else
      render 'edit'
    end
  end

  def unsubscribe
    @user = current_user
  end

  def withdraw
    @user = current_user
    if @user.email == 'guest@example.com'
      flash[:alert] = "ゲストユーザは退会できません"
      redirect_to users_unsubscribe_path
    else
      @user.update(is_valid: false)
      reset_session
      redirect_to root_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:image, :name, :email, :introduction)
    end
end
