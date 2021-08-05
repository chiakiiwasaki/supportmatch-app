class Public::UsersController < ApplicationController
  def show
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.save(user_params)
      redirect_to users_my_page_path
    else
      render 'edit'
    end
  end

  def unsubscribe
  end

  def withdraw
  end

  private
    def user_params
      params.require(:user).permit(:image_id, :name, :email, :introduction)
    end
end
