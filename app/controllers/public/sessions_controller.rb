class Public::SessionsController < Devise::SessionsController
  before_action :reject_inactive_user, only: [:create]

  def reject_inactive_user
    @user = User.find_by(email: params[:user][:email])
    if @user
      if (@user.valid_password?(params[:user][:password]) && !@user.is_valid)
        flash[:alert] = "このアカウントは退会済みです"
        redirect_to new_user_session_path
      end
    end
  end

  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def guest_sign_in
    user = User.guest
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました'
  end

end
